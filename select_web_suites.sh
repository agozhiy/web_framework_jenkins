#!/bin/bash

WEB_UI_FUNCTIONAL=$1
WEB_UI_SECURITY=$2
REST_API_FUNCTIONAL=$3
REST_API_SECURITY=$4

TEST_SUITES=''

if [ $WEB_UI_FUNCTIONAL = true ]
then
  TEST_SUITES=$TEST_SUITES,test_suites/web_ui/functional.xml
fi

if [ $WEB_UI_SECURITY = true ]
then
  TEST_SUITES=$TEST_SUITES,test_suites/web_ui/security.xml
fi

if [ $REST_API_FUNCTIONAL = true ]
then
  TEST_SUITES=$TEST_SUITES,test_suites/rest_api/functional.xml
fi

if [ $REST_API_SECURITY = true ]
then
  TEST_SUITES=$TEST_SUITES,test_suites/rest_api/security.xml
fi

if [ ! $TEST_SUITES = '' ]
then
  TEST_SUITES=${TEST_SUITES:1}
fi

/home/mapr/drillAutomation/scripts/web_framework_jenkins/run_tests.sh "$TEST_SUITES" $5
