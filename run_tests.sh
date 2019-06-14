#!/bin/bash

cd /home/mapr/drillAutomation/drill-web-test-framework/
mvn clean test -Dsurefire.suiteXmlFiles=$1 $2
