#include <Adafruit_CircuitPlayground.h>

uint32_t color_flame = 0;
uint32_t color_off = 0; 

class RocketFlames 
{
public:
  RocketFlames(Adafruit_CircuitPlayground& b) : m_board(b), m_brightness(5) { }

  void draw();
  void setBrightness(uint32_t b) { m_brightness = b; }

private:
  uint32_t saturatingAdd(uint32_t c1, uint32_t c2) const;
  uint32_t getFlameColorDelta() const;
    
private:
  Adafruit_CircuitPlayground& m_board;
  uint32_t m_brightness;
};

void RocketFlames::draw() 
{
  m_board.clearPixels();
  for (int ipix = 0; ipix < 10; ++ipix) {
    uint32_t const color_delta = getFlameColorDelta();
    uint32_t const next_color = saturatingAdd(color_delta, m_board.strip.getPixelColor(ipix));
    m_board.setPixelColor(ipix, next_color);
  }
}

uint32_t RocketFlames::getFlameColorDelta() const
{
  uint8_t const rpeak = 16*m_brightness;  // 16 to 240
  uint8_t const gpeak = 4*m_brightness;   // 4 to 64
  uint8_t shift = (uint8_t)random(rpeak);
  uint8_t const r = (shift > rpeak ? 0 : rpeak - shift);
  shift /= 4; 
  uint8_t const g = (shift > gpeak ? 0 : gpeak - shift);
  return m_board.strip.Color(r, g, 0);
}

uint32_t RocketFlames::saturatingAdd(uint32_t c1, uint32_t c2) const
{
  uint8_t const r1 = (uint8_t)(c1 >> 16);
  uint8_t const g1 = (uint8_t)(c1 >> 8);
  uint8_t const b1 = (uint8_t)(c1 >> 0);

  uint8_t const r2 = (uint8_t)(c2 >> 16);
  uint8_t const g2 = (uint8_t)(c2 >> 8);
  uint8_t const b2 = (uint8_t)(c2 >> 0);

  return m_board.strip.Color(
    constrain(r1+r2,0,255),
    constrain(g1+g2,0,255),
    constrain(b1+b2,0,255));
}

RocketFlames flames (CircuitPlayground);

void setup() 
{
  Serial.begin(9600);
  Serial.println("Blast off!");

  CircuitPlayground.begin();
}

void loop() 
{
  for (int b = 5; b < 10; ++b) {
    flames.setBrightness(b);
    for (int flicker = 0; flicker < 4; ++flicker) {
      flames.draw();
      delay(random(100,250));
    }
  }
  for (int b = 9; b >= 5; --b) {
    flames.setBrightness(b);
    for (int flicker = 0; flicker < 4; ++flicker) {
      flames.draw();
      delay(random(100,250));
    }
  }
}
