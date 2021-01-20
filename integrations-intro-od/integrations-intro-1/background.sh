curl -s https://datadoghq.dev/katacodalabtools/r?raw=true|bash
statusupdate tools
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
apt-get -y update
apt-get -y install python3.8-venv </dev/null
statusupdate python3
statusupdate complete