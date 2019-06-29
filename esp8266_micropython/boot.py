import time
from umqttsimple import MQTTClient
import ubinascii
import machine
import micropython
import network
import esp
esp.osdebug(None)
import gc
gc.collect()

# MQTT Configs 
mqtt_server = 'www.maqiatto.com'
client_id = ubinascii.hexlify(machine.unique_id())
last_message = 0
message_interval = 5
counter = 0

# Update below credentials with yours
ssid = 'YOUR_WIFI_SSID'
password = 'YOUR_WIFI_PASSWORD'
mqtt_user = 'YOUR_MQTT_USER'
mqtt_pass = 'YOUR_MQTT_PASS'
topic_sub = b'YOUR_TEST_TOPIC'
topic_pub = b'YOUR_TEST_TOPIC_AGAIN'

# WiFi settings
station = network.WLAN(network.STA_IF)
station.active(True)
station.connect(ssid, password)

while station.isconnected() == False:
  pass

print('Connection successful')
print(station.ifconfig())
