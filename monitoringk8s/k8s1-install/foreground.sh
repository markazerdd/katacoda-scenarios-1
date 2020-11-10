#!/bin/bash

while [ ! -f "/usr/local/bin/prepenvironment" ]; do
  sleep 0.3
done
sleep 0.3

until kubectl create secret generic datadog-api --from-literal=token=$DD_API_KEY
do
  echo "kubectl isn't ready yet. If this doesn't resolve, contact support."
  sleep 0.5
done



prepenvironment

