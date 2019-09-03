#!/bin/bash

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v "/home/mapr/drillAutomation/selenoid/" -e OVERRIDE_HOME="/home/mapr/drillAutomation/selenoid/" aerokube/cm:latest-release selenoid start --vnc --tmpfs 2000 --last-versions 2 --browsers "firefox;chrome"
docker run -d --name selenoid-ui -p 8090:8090 aerokube/selenoid-ui --listen :8090 --selenoid-uri http://10.234.238.57:4444
