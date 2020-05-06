#!/bin/bash

cd $(dirname $0)

command=$1
shift 1

function helper(){
  echo "ERROR: Choice at least one!"
  echo 
  echo "Options: start | restart | stop"
  echo 
  exit 1
}

[ -z "$command" ] && helper
[ "$command" != "start" ] && [ "$command" != "stop" ] && [ "$command" != "restart" ] && helper

[ -f /etc/redhat-release ] && \
  redhat/$command.sh || (
  [ -f /etc/lsb-release ] && \
  ubuntu/$command.sh
)

