
## MaQiaTTo ESP32 Client

### Environment Setup for ESP32
* Before start, please follow [this](https://docs.espressif.com/projects/esp-idf/en/latest/get-started/index.html#get-started-get-esp-idf) brilliant setup guide to make your environment ready with ESP32.

### Get ESP32 Sample Code
* Get MaQiaTTo sample codes via git or just download it as zip :
```
$ git clone https://github.com/cagdasdoner/maqiatto
```
* Navigate into the ESP32 sample directory :
```
$ cd esp32
```

### Configuring the Device with your Credentials
* Navigate into sample code's directory.
* Type below command to set your configurations first :
```
$ make menuconfig
```
* From the opened **config menu** screen, we will first configure our Wi-Fi credentials. To do that, select **Example Connection Configuration** like given below :  
![Alt text](img/menuconfig.png?raw=true "Menuconfig")
* Provide your SSID and Password into the opening screen :  
![Alt text](img/connectionconfig.png?raw=true "WiFi configuration")
* Save and exit. 
* Jump into the **MaQiaTTo MQTT Configuration** tab to provide MQTT credentials of your user :  
![Alt text](img/maqiattoconfig.png?raw=true "MaQiaTTo configuration menu")
* You will be asked for your MQTT **username**, **password** and test **topic**. Provide them into the menu :  
![Alt text](img/mqttconfig.png?raw=true "MQTT configuration")
* Save and exit. 
* Now your configuration is ready to connect to WiFi and MQTT Broker. Exit from the **menuconfig** to the console.

### Running the Sample Code
* Be sure that your ESP32 device is connected to your PC and type the below command both to compile and flash :
```
$ make flash
```
* After it succeeds, navigate to the monitor tool with below command to check your connection :
```
$ make monitor
```
* Device will start to run and connect to maqiatto.com. The logs will demonstrate the status of the connectivity like below :
```
I (3561) MaQiaTTo_MQTT_EXAMPLE: Other event id:7
I (3891) MQTT_CLIENT: Sending MQTT CONNECT message, type: 1, id: 0000
I (4091) MaQiaTTo_MQTT_EXAMPLE: MQTT_EVENT_CONNECTED
I (4301) MaQiaTTo_MQTT_EXAMPLE: MQTT_EVENT_SUBSCRIBED, msg_id=39314
I (4501) MaQiaTTo_MQTT_EXAMPLE: MQTT_EVENT_DATA
I (4711) MaQiaTTo_MQTT_EXAMPLE: MQTT_EVENT_PUBLISHED, msg_id=40675
I (4711) MaQiaTTo_MQTT_EXAMPLE: MQTT_EVENT_DATA
TOPIC=cadominna@gmail.com/device/1
DATA=test data on esp32!
```
