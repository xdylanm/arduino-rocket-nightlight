#include <Adafruit_NeoPixel.h>
#include <CapacitiveSensor.h>

#define PIN_DATA 4          // DIN to Neo Pixels
#define PIN_LED 1           // LED on Model B=PIN0, LED on Model A=PIN1
#define PIN_SENSE_READ 0    // Read for capacitive sensor
#define PIN_SENSE_DRIVE 2   // Drive V for capacitive sensor

#define N_PIXELS 4          // no more than 31

// threshold to detect a capacitive touch (0-999)
#define CAP_THRESHOLD 50 

// number of samples for capacitive sensor
#define CAP_NUM_SAMPLES 10 

// debounce timing (ms)
#define DEBOUNCE_MS 250 

#define PULSE_MS 125

// time to turn off (ticks = 1000/DEBOUNCE_MS*60*# minutes)
#define AUTO_OFF_TIMEOUT_TICKS 4800
uint32_t timeout_counter = 0;

// colors
const uint32_t palette[] = {
  0x8B0000, // dark red
  0xB22222, // firebrick
  0xFF0000, // red
  0xDC143C, // crimson
  0xFF6347, // tomato
  0xFF4500, // orange red
  0xFF8C00, // dark orange
  0xFFA500, // orange
  0xFFD700, // gold
  0xFFFF00, // yellow
  0xFFFFE0, // light yellow
  0xFFFACD  // lemon chiffon
};
uint8_t const num_colors = sizeof(palette)/sizeof(uint32_t);

int8_t pixel_color_index[N_PIXELS];
int8_t pixel_color_brightness[N_PIXELS];

enum NightLightMode {OFF=0, TWINKLE, PULSE, PULSE_OFF, NUM_MODES} night_light_state;
uint8_t pulse_level = 0;


Adafruit_NeoPixel pixels (N_PIXELS,PIN_DATA,NEO_GRBW+NEO_KHZ800);
CapacitiveSensor cap_sensor (PIN_SENSE_DRIVE, PIN_SENSE_READ);

bool cap_button_clicked() {
  long const val = cap_sensor.capacitiveSensor(CAP_NUM_SAMPLES); 
  return (val > CAP_THRESHOLD);
}

uint32_t scaled_color_quarter(uint8_t ipix, uint8_t num) {
  if (num == 4) {
    return palette[pixel_color_index[ipix]];
  } else if (num == 0) {
    return 0; 
  } else {
    uint8_t red   = (uint8_t)(palette[pixel_color_index[ipix]] >> 16);
    uint8_t green = (uint8_t)(palette[pixel_color_index[ipix]] >> 8);
    uint8_t blue  = (uint8_t)(palette[pixel_color_index[ipix]] >> 0);

    if (num == 2) {
      red   = red >> 1;
      green = green >> 1;
      blue  = blue >> 1;
    } else if (num == 1) {
      red   = red >> 2;
      green = green >> 2;
      blue  = blue >> 2;
    } else if (num == 3) {
      red   -= (red >> 2);
      green -= (green >> 2);
      blue  -= (blue >> 2);
    }
    return ((uint32_t)red << 16) | ((uint32_t)green << 8) | ((uint32_t)blue << 0);    
  }
}

void update_lights() 
{
  if (night_light_state == TWINKLE) {
    uint32_t brighten_mask = 0;
  
    long const nchange = random(N_PIXELS);  // brighten this many pixels
    for(long idelta = 0; idelta < nchange; ++idelta) {
      long const ipix = random(N_PIXELS);   // brighten this pixel
      brighten_mask |= 0x01 << ipix;
    }

    // saturating brighten/darken, then update 
    for(uint8_t ipix = 0; ipix < N_PIXELS; ++ipix) {
      if (brighten_mask & (0x01 << ipix)) {
        if ( pixel_color_brightness[ipix] < 3 ) { // 2 or lower --> 4
          pixel_color_brightness[ipix] += 2;
        } else if (pixel_color_brightness[ipix] > 5) {  // 6 or higher --> 4
          pixel_color_brightness[ipix] -= 2;
        } else {
          pixel_color_brightness[ipix] = 4;
        }
      } else {
        if ( pixel_color_brightness[ipix] > 1 && pixel_color_brightness[ipix] < 5 ) { // 2 to 4 --> 0
          pixel_color_brightness[ipix] -= 2;
        } else if (pixel_color_brightness[ipix] == 5) {  // 5 --> 8
          pixel_color_brightness[ipix] += 2;
        } else {
          pixel_color_brightness[ipix] = 0;
        }
       
        if (pixel_color_brightness[ipix] == 0) {  // change the color 
          pixel_color_index[ipix] = random(num_colors); 
        }
      }
    }
  } else if (night_light_state == PULSE) {
    if (pixel_color_brightness[0] == 0) { // new colors at 0
      for (uint8_t ipix = 0; ipix < N_PIXELS; ++ipix) {
        pixel_color_index[ipix] = random(num_colors); 
      }
    }

    for (uint8_t ipix = 0; ipix < N_PIXELS; ++ipix) {
      pixel_color_brightness[ipix] = (pixel_color_brightness[ipix] + 1) % 8;
    }
  } else if (night_light_state == PULSE_OFF) {
    bool all_off = true;
    for (uint8_t ipix = 0; ipix < N_PIXELS; ++ipix) {
      if (pixel_color_brightness[ipix] != 0) {      
        all_off = false;
        pixel_color_brightness[ipix] = (pixel_color_brightness[ipix] + 1) % 8;
      }
    }
    if (all_off) {
      night_light_state = OFF;
    }
  }

  for (uint8_t ipix = 0; ipix < N_PIXELS; ++ipix) {
    if (pixel_color_brightness[ipix] > 4) {
      pixels.setPixelColor(ipix,scaled_color_quarter(ipix,8-pixel_color_brightness[ipix]));
    } else {
      pixels.setPixelColor(ipix,scaled_color_quarter(ipix,pixel_color_brightness[ipix]));
    }
  }
  pixels.show();

}


void setup() 
{
  pinMode(PIN_LED, OUTPUT); 
  pinMode(PIN_SENSE_READ, INPUT);
  pinMode(PIN_SENSE_DRIVE, OUTPUT);
  pixels.begin();
  delay(500);
  for (int p = 0; p < N_PIXELS; ++p) {
    pixel_color_brightness[p] = 0; // off
    pixel_color_index[p] = random(num_colors); 
    pixels.setPixelColor(p,0);
  }
  pixels.show();

  timeout_counter = 0;
  night_light_state = OFF;
}


uint8_t toggle = 0;
bool cap_button_down = false;
void loop() 
{
    if (cap_button_clicked()) { // button down
      cap_button_down = true;
      digitalWrite(PIN_LED, toggle);
      toggle = (toggle == 0 ? 1 : 0);
      delay(DEBOUNCE_MS);
    } else if (cap_button_down) { // released
      cap_button_down = false;
      timeout_counter = 0;  // reset
      for (uint8_t ipix = 0; ipix < N_PIXELS; ++ipix) {
        pixel_color_brightness[ipix] = 0; // off
        pixel_color_index[ipix] = random(num_colors); 
      }

      if (night_light_state < PULSE) {
        night_light_state = (NightLightMode)(night_light_state + 1);
      } else {
        night_light_state = OFF;
      }
      delay(120);
    } else {
      delay(DEBOUNCE_MS/2);
    }

    if (night_light_state != OFF) {
      timeout_counter++;
      if (timeout_counter > AUTO_OFF_TIMEOUT_TICKS) {
        night_light_state = PULSE_OFF;
      } 
    }

    update_lights();

}
