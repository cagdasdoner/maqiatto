## MaQiaTTo 
MaQiaTTo provides a ready-to-use online and free MQTT message broker for your projects. Please check [maqiatto](https://www.maqiatto.com) for more info!

### Samples
MaQiatto provides several IoT device sample codes for you to easily start using it. Just find your platfom on given list and start immediately!  
* [ESP32 via IDF C SDK](https://github.com/cagdasdoner/maqiatto/tree/master/esp32)
* [Raspberry, BeagleBone, Ubuntu Desktop like Linux based platforms](https://github.com/cagdasdoner/maqiatto/tree/master/linux-based)
* [ESP8266 via Arduino](https://github.com/cagdasdoner/maqiatto/tree/master/esp8266_arduino)
* [ESP8266 via Micropython](https://github.com/cagdasdoner/maqiatto/tree/master/esp8266_micropython)
* [ESP8266 via Lua](https://github.com/cagdasdoner/maqiatto/tree/master/esp8266_lua)
* [Particle Photon (Coming soon)]()


### Secure MQTT
MaQiaTTo now supports secure MQTT connection over TLS/SSL. Here some keynotes that you should know before proceed:
* Secure port is assigned as **3883**.
* [cafile](https://github.com/cagdasdoner/maqiatto/tree/master/cert/ca.crt) need to be provided to your client's requests. Examples will be extended soon to demonstrate secure connectivity.
* This feature is under test with self signed certificates, will be switched to known certificate authorities asap.
