## MaQiaTTo ESP8266 Arduino Client
### Arduino IDE Setup
* Install the Arduino IDE 1.6.4 or greater from this [site](https://www.arduino.cc/en/Main/Software)
* To Install the ESP8266 Board Package, go to **File->Preferences** from IDE menu.
* Add below URL into **Additional Boards Manager URLs** section.
```
http://arduino.esp8266.com/stable/package_esp8266com_index.json
```
* Go to Boards Manager from **Tools->Board->Boards Manager** and search for **esp8266** and press install.
* After installation, you will be able to select ESP8266 based devices as a board under **Tools->Board**.
* Select "NodeMCU 1.0" as board. It will auto complete board specifications; 80 MHz as CPU Frequency, 4M (1M SPIFFS) as Flash Size.
* To be able to write SW on device and get traces, select a proper device path from **Tools->Port** section.
* For linux users, add your user to the group of dialout to enable serial comm :
```
$ sudo adduser $USER dialout
```
### Required Arduino Libraries
* To install required MQTT library, navigate to **Sketch->Manage Libraries->Library Manager** and type below name of the library :
```
PubSubClient
```
### Running the MQTT sample
* Firstly, download MaQiaTTo client sample repository via git or just download as [zip](https://github.com/cagdasdoner/maqiatto) :
```
$ git clone https://github.com/cagdasdoner/maqiatto.git
```
* From gathered directory, navigate into ESP8266 Arduino related code :
```
$ cd maqiatto/esp8266_arduino
```
* Import **maqiatto.ino** file via **File->Open** to get all other required files.
* Open **Credentials.h** file to update the given credentials with yours, like below:
```
/* WiFi Credentials*/
#define STA_SSID "YOUR_WIFI_SSID"
#define STA_PASS "YOUR_WIFI_PASS"

/* MQTT Credentials */
#define MQTT_USERNAME "YOUR_MAQIATTO_USERNAME"
#define MQTT_KEY      "YOUR_MAQIATTO_PASS"
#define MQTT_TOPIC    "YOUR_MAQIATTO_TEST_TOPIC"
```
* After credentials update, compile the code and burn into your device. 
* After you have successfully connect to your WiFi Network, MQTT connection will be provided. you can see below logs under **Serial Monitor** of the IDE :
```
Waiting for AP connection ...

Connected to AP. IP : 192.168.1.10
Trace   : Attempting MQTT connection...
Trace   : Connected to Broker.
Data    : dataCallback. Topic : [cadominna@gmail.com/sensor]
Data    : dataCallback. Payload : temp:25
```

    


