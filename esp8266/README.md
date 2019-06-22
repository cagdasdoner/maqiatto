## MaQiaTTo ESP8266 Client
### Required Arduino Libraries for Maqiatto Client:

* To install arduino libraries use Sketch->Libraries->Library Manager.
* PubSubClient		: https://github.com/knolleary/pubsubclient/

### Configuring the Sample Code
* After importing code base into your Arduino IDE, change the **Credentials.h** file according to provided broker credentials.
```
/* Provide MQTT broker credentials as denoted in maqiatto.com. */
#define MQTT_USERNAME     "your-maqiatto-user-name"
#define MQTT_KEY          "your-maqiatto-broker-pass"

/* Provide topic as it is denoted in your topic list. 
 * For example mine is : cadominna@gmail.com/topic1
 * To add topics, see https://www.maqiatto.com/configure
 */
#define TOPIC "your-topic-to-pub-sub"
