--- connect to the wifi network ---
wifi.setmode(wifi.STATION) 
wifi.sta.config(STATION_CFG)
wifi.sta.connect()

local ipTimer = tmr.create()
ipTimer:alarm(1000, 1, function() check()  end)

function check()
  if wifi.sta.getip() == nil then
    print("Connecting to AP...")
  else
    print("IP: ",wifi.sta.getip())
    ipTimer:unregister()
  end
end

-- initiate the mqtt client
local mqtt = mqtt.Client(wifi.ap.getmac(), 120, MQTT_USER, MQTT_PASS)

mqtt:on("connect", function(con) print ("Connected to MaQiaTTo.") end)
mqtt:on("offline", function(con) print ("Disconnected from MaQiaTTo!") end)

-- on receive message
mqtt:on("message", function(conn, topic, data)
  print(topic .. ":" )
  if data ~= nil then
    print(data)
  end
end)

mqtt:connect(MQTT_HOST, MQTT_PORT, 0, function(conn)
  print("connected")
  -- subscribe topic with qos = 0
  mqtt:subscribe(MQTT_TOPIC, 0, function(conn)
    -- publish a message with data = my_message, QoS = 0, retain = 0
    mqtt:publish(MQTT_TOPIC,"maqiatto test!", 0, 0, function(conn)
      print("sent")
    end)
  end)
end)