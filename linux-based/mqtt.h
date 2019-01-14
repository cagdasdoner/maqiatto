#ifndef LINUX_MQTT
#define LINUX_MQTT

#define QOS             1
#define TIMEOUT         5000L
#define KEEP_ALIVE      20

void MQTTBegin();
void MQTTSubscribe(const char* topic);
void MQTTPublish(const char* topic, char* payload);
void MQTTDisconnect();

#endif /* LINUX_MQTT */