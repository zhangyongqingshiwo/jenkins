#!/bin/sh

jenkinsWorkSpace=$1

nohup java -jar jenkinsWorkSpace/jenkins/target/jenkins-0.0.1-SNAPSHOT.jar >/dev/null 2>&1 &