MQTT_HOST = "www.maqiatto.com"
MQTT_PORT = 1883
STATION_CFG={}

-- change below credentials with yours
STATION_CFG.ssid = "YOUR_WIFI_SSID"
STATION_CFG.pwd = "YOUR_WIFI_PASS"
MQTT_USER = "YOUR_MQTT_USER"
MQTT_PASS = "YOUR_MQTT_PASS"
MQTT_TOPIC = "YOUR_MQTT_TEST_TOPIC"

-- launch to connectivity
dofile("mqtt.lua")