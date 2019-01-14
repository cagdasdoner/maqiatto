#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

#include "mqtt.h"
#include "credentials.h"

#define TOUT_TO_PUBLISH 5000

/* This program connects to https://www.maqiatto.com/
 * Periodically publishes test messages with your credentials.
 */

int main(int argc, char* argv[])
{
    MQTTBegin();

    MQTTSubscribe(TOPIC);

    while(1) 
    {
        MQTTPublish(TOPIC, "test maqiatto.com!");
        sleep(TOUT_TO_PUBLISH / 1000);
    };

    MQTTDisconnect();

    return 0;
}