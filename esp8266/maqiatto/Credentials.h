#ifndef ARDUINO_CREDENTIALS_H
#define ARDUINO_CREDENTIALS_H

/* WiFi Credentials to connect Internet */
#define STA_SSID "your-wifi-ssid"
#define STA_PASS "your-wifi-key"

/* Provide MQTT broker credentials as denoted in maqiatto.com. */
#define MQTT_BROKER       "maqiatto.com"
#define MQTT_BROKER_PORT  1883
#define MQTT_USERNAME     "your-maqiatto-user-name"
#define MQTT_KEY          "your-maqiatto-broker-pass"


/* Provide topic as it is denoted in your topic list. 
 * For example mine is : cadominna@gmail.com/topic1
 * To add topics, see https://www.maqiatto.com/configure
 */
#define TOPIC    "your-topic-to-pub-sub"

#endif /* ARDUINO_CREDENTIALS_H */
