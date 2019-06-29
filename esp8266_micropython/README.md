## Client Connection Guide for ESP devices with Micropython
### Getting ready for Micropython
* There are several ways to run and burn micropython on your devices. It is preferred to use **uPyCraft** IDE to accomplish this task.
* Follow up [this link](https://randomnerdtutorials.com/getting-started-micropython-esp32-esp8266/) to make your environment ready for the **python** development and running **uPyCraft**.
* As the previous link suggests, get the latest firmware from the [given link](https://randomnerdtutorials.com/flash-upload-micropython-firmware-esp32-esp8266/) and follow up the instructions in the IDE.
### Running Micropython MQTT sample on ESP Devices
* Firstly, download MaQiaTTo client sample repository via git or just download as [zip](https://github.com/cagdasdoner/maqiatto) :
```
$ git clone https://github.com/cagdasdoner/maqiatto.git
```
* From gathered directory, navigate into ESP8266 Micropython related code :
```
$ cd maqiatto/esp8266_micropython
```
* Put all python codes under your **uPyCraft workspace** directory.
* From the IDE menu, do **File->Flush Directory**. Your files will be visible in the IDE.
* Update below credentials under **boot.py** file :
```
# Update below credentials with yours
ssid = 'YOUR_WIFI_SSID'
password = 'YOUR_WIFI_PASSWORD'
mqtt_user = 'YOUR_MQTT_USER'
mqtt_pass = 'YOUR_MQTT_PASS'
topic_sub = b'YOUR_TEST_TOPIC'
topic_pub = b'YOUR_TEST_TOPIC_AGAIN'
```
* Connect your device to PC via USB and select correct port via **Tools->Serial**.
* Press **F5** or **Tools->Donload and Run**. 
* Reboot your device and you will see below logs bottom side of the IDE which means everything is OK : 
```
exec(open('./boot.py').read(),globals())
Connection successful
('192.168.1.10', '255.255.255.0', '192.168.1.1', '192.168.1.1')
Connected to www.maqiatto.com broker, subscribed to b'cadominna@gmail.com/sensor' topic
(b'cadominna@gmail.com/sensor', b'maqiatto test #0')
(b'cadominna@gmail.com/sensor', b'maqiatto test #1')
(b'cadominna@gmail.com/sensor', b'maqiatto test #2')
```