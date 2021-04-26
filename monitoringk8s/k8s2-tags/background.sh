#!/bin/bash
curl -s https://datadoghq.dev/katacodalabtools/r?raw=true|bash
touch status.txt
echo "">/root/status.txt
if [ ! -f "/root/provisioned" ]; then
  apt install datamash
  cd k8s-yaml-files
  sudo sed -i 's/extensions\/v1beta1/apps\/v1/g' datadog-agent.yaml
  sudo sed -i 's/6.10.2/6.27.0/' datadog-agent.yaml #agent version
  sudo sed -i '/template:/i \ \ selector:\n\ \ \ \ matchLabels:\n\ \ \ \ \ \ app:\ datadog-agent' datadog-agent.yaml
fi

echo "complete">>/root/status.txt

