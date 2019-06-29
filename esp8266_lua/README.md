## MaQiaTTo ESP8266 Lua Client
### Preparing Firmware
* You need to burn Lua firmware to your ESP8266 before proceeding. Please follow [this link](https://learn.adafruit.com/diy-esp8266-home-security-with-lua-and-mqtt/how-to-re-flash-your-esp8266) for one of the best practice of firmware burning.
* When you navigate to [NodeMCU custom build page](https://nodemcu-build.com/index.php), do not forget to select **MQTT** from **Select Modules to Include** tab. PRovide your e-mail address and start build. Once build is completed, you will be notified and firmware download link will be provided.
* Download the [ESPTool](https://github.com/espressif/esptool) to burn your firmware. 
* We offer to use **pip** to install *ESPTool* :
```
pip install esptool
```
* Copy downloaded image under downloaded **esptool** directory and change directory into it.
* Use below command to burn downloaded firmware :
```
python ./esptool.py --port /dev/tty{YOUR_DEVICE_NAME} write_flash 0x00000 {YOUR_DOWNLOADED_FIRMWARE}
```
### Running with MQTT Sample
* Firstly, download MaQiaTTo client sample repository via git or just download as [zip](https://github.com/cagdasdoner/maqiatto) :
```
$ git clone https://github.com/cagdasdoner/maqiatto.git
```
* From gathered directory, navigate into ESP8266 Lua related code :
```
$ cd maqiatto/esp8266_lua
```
* Open **init.lua** file and modify below credentials with yours :
```
STATION_CFG.ssid = "YOUR_WIFI_SSID"
STATION_CFG.pwd = "YOUR_WIFI_PASS"
MQTT_USER = "YOUR_MQTT_USER"
MQTT_PASS = "YOUR_MQTT_PASS"
MQTT_TOPIC = "YOUR_MQTT_TEST_TOPIC"
```
* Get [LuaTool](https://github.com/4refr0nt/luatool).
* Navigate into the luatool directory where **luatool.py** resides.
* Write our two lua script into the device with below commands :
```
./luatool.py --port /dev/tty{YOUR_DEVICE_NAME} --baud 115200 --src {PATH_TO_YOUR_INIT_LUA_FILE} --dest init.lua --verbose
./luatool.py --port /dev/tty{YOUR_DEVICE_NAME} --baud 115200 --src {PATH_TO_YOUR_MQTT_LUA_FILE} --dest mqtt.lua --verbose
```
* You will saw the writing process line by line. After both completed, open a serial monitor to **/dev/tty{YOUR_DEVICE_NAME}**. You will see below like logs that proves your connection is done :
```
NodeMCU custom build by frightanic.com
	branch: master
	commit: c16adb5dfb8c02b692034bbd553502765b9733cc
	SSL: false
	modules: file,gpio,mqtt,net,node,tmr,uart,wifi
 build created on 2019-06-17 19:51
 powered by Lua 5.1.4 on SDK 2.2.1(6ab97e9)
> Connecting to AP...
Connecting to AP...
IP: 	192.168.1.10	255.255.255.0	192.168.1.1
connected
sent
cadominna@gmail.com/device/1:
maqiatto test
```