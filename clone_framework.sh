#!/bin/bash

cd /home/mapr/drillAutomation
echo -e "mapr" | sudo -S rm -rf /home/mapr/drillAutomation/drill-web-test-framework
git clone "https://github.com/$1/drill-web-test-framework.git"
cd /home/mapr/drillAutomation/drill-web-test-framework
git checkout "$2"
git status
git log -n3 --oneline
cp /home/mapr/drillAutomation/scripts/web_framework_jenkins/init.properties /home/mapr/drillAutomation/drill-web-test-framework/conf
