curl -s https://datadoghq.dev/katacodalabtools/r?raw=true|bash
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
apt-get -y update
apt-get -y install python3.8-venv </dev/null

# Module 1
mkdir $HOME/dd && cd $HOME/dd
git clone https://github.com/DataDog/integrations-extras.git

cd $HOME/dd/integrations-extras
python -m venv venv
. venv/bin/activate

pip install "datadog-checks-dev[cli]"
ddev config set repo extras
statusupdate complete