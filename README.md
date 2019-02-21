# Space Shuttle Nightlight

Based on the [low poly space shuttle nightlight](https://www.thingiverse.com/thing:2957683) by [kelvin8r](https://www.thingiverse.com/kelvin8r). 

## Modifications

* Remixed the base print without supports (buttons are printed separately and glued on, so it prints upside down). Also re-sized the opening to hold an Adafruit Circuit Playground.
* Eventually used the [Digispark board](http://digistump.com/products/1) (I use a clone that works off of micro USB)
* Code to drive neo pixels supports a different color palette and different animations. Mode switching is triggered by [capacitive touch](https://playground.arduino.cc/Main/CapacitiveSensor)
* Printed on [Anycubic I3 Mega](http://www.anycubic3d.com/)
** Black base, white shuttle/exhaust

## Notes

* The digispark board (ATTiny85 based) with the micronucleus bootloader has a long delay (5s) between power on and the start of the program. When connected via USB, this is fine (the bootloader seems to look for a host and when it finds one, all is good). When _powered_ off the USB (e.g. through a wall plug), nothing happens for 5s+ -- don't panic.
* The digispark board recycles a couple of pins for USB. Those pins are not suitable for capacitive touch. They can drive the neo pixels, but can also put the pixels in an odd state when running data over the USB.
* Follow the printing instructions from the [make](https://www.thingiverse.com/thing:2957683) carefully:
** Exhaust: _no infill_, 0.2mm layer, 0.4mm (2x) bottom layer, 1.2mm (6x) walls
** Shuttle: 25% infill, 0.2mm layer (or whatever)
** Base: 20% infill, 0.2mm layer (or whatever) -- print upside down to avoid supports


