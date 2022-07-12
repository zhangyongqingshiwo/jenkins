#!/bin/sh

jenkinsWorkSpace=$1
servicePort=$2

function killPidByServicePort(){
    servicePort=$1
    netstat -nlp > /opt/zyq/tempPid.txt
    pid=`cat /opt/zyq/tempPid.txt | grep :$servicePort | awk '{print $7}' | awk -F "/" '{ print $1 }'`
    rm -f /opt/zyq/tempPid.txt
    if [ -n  "$pid" ];  then
        echo "kill pid : $pid for port $servicePort"
        kill -9 $pid
    fi
}

echo "stop JenkinsDemo ......"
killPidByServicePort $servicePort

echo "start JenkinsDemo ......"
nohup java -jar $jenkinsWorkSpace/target/jenkins-0.0.1-SNAPSHOT.jar >/data/jenkins-demo.log 2>&1 &
echo "auto deploy done ..."