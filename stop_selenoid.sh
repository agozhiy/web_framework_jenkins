#!/bin/bash

cd /home/mapr/drillAutomation/selenoid/
./cm selenoid stop
./cm selenoid-ui stop

while [ ! -z "$(docker ps | awk '/selenoid/{print $1}' | awk 'NR==1')" ]; do docker kill $(docker ps | awk '/selenoid/ {print $1}' | awk 'NR==1'); done
while [ ! -z "$(docker images | awk '/selenoid/{print $3}' | awk 'NR==1')" ]; do docker image rm -f $(docker images | awk '/selenoid/ {print $3}' | awk 'NR==1'); done
while [ ! -z "$(docker container ls -a | awk '/selenoid/{print $1}' | awk 'NR==1')" ]; do docker container rm -f $(docker container ls -a | awk '/selenoid/ {print $1}' | awk 'NR==1'); done
