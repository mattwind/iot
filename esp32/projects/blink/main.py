import utime
import machine

# GPIO2
led  = machine.Pin(2, machine.Pin.OUT)
rate = 100

while True:
        led.value(1)
        utime.sleep_ms(rate)
        led.value(0)
        utime.sleep_ms(rate)
