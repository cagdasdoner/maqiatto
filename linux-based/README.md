

Setup Guide for Linux based 
  
This tiny client app aims to subscribe and publish to a topic via maqiatto.com.
  
Get MQTT client library :
  
    git clone https://github.com/eclipse/paho.mqtt.c.git
    cd paho.mqtt.c.git
    make
    sudo make install
  
NOTE: Your system may need to have OpenSSL and Curl libraries. If necessary type them :
  
    sudo apt-get install libssl-dev
    sudo apt-get install libcurl4-openssl-dev
  
Go for client code :
  
    git clone git clone https://github.com/cagdasdoner/maqiatto.git
    cd maqiatto/linux-based
    Change your credentials (broker address, username, pass) under credentials.h.
  
To compile and run the client code, use type them below :
  
    make
    ./mqttConnect
  
