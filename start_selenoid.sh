#!/bin/bash

docker pull selenoid/vnc_chrome:75.0
docker pull selenoid/vnc_firefox:67.0
docker pull selenoid/vnc_opera:60.0
/home/mapr/drillAutomation/selenoid/cm selenoid start --vnc
docker run -d --name selenoid-ui -p 8090:8090 aerokube/selenoid-ui --listen :8090 --selenoid-uri http://10.234.238.57:4444
