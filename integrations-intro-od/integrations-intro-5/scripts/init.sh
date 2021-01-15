# Update apt
#echo "Updating apt..."
#apt update

# Install virtualenv package
#echo "Installing python development packages..."
#apt install -y python3.8-venv python3.8-dev

# Ensure python3 is default
echo "Setting python3 as the default....."
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

#Module 2
unzip ~/awesome.zip -d .

# Ready to go!
echo "You're good to go!"
# exit 0
