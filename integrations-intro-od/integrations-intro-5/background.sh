curl -s https://datadoghq.dev/katacodalabtools/r?raw=true|bash
statusupdate tools

update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
apt-get -y update
apt-get -y install python3.8-venv </dev/null
statusupdate python3

# Module 1
mkdir $HOME/dd && cd $HOME/dd
git clone https://github.com/DataDog/integrations-extras.git
statusupdate extras

cd $HOME/dd/integrations-extras
python -m venv venv
. venv/bin/activate
statusupdate venv

pip install "datadog-checks-dev[cli]"
ddev config set repo extras
statusupdate ddev

#Module 2
unzip ~/awesome.zip -d .
statusupdate awesome

ln -s /etc/datadog-agent/conf.d/awesome.d/conf.yaml /root/conf.yaml

statusupdate complete