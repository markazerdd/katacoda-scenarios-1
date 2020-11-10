#!/bin/bash

while [ ! -f "/usr/local/bin/prepenvironment" ]; do
  sleep 0.3
done
sleep 0.3

until kubectl create secret generic datadog-api --from-literal=token=$DD_API_KEY
do
  echo "kubectl isn't ready yet. If this doesn't resolve after 45 seconds, contact support."
  sleep 1.5
done



prepenvironment

