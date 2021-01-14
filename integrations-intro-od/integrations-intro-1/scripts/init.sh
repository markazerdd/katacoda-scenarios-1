# Update apt
#echo "Updating apt..."
#apt update

# Install virtualenv package
#echo "Installing python development packages..."
#apt install -y python3.8-venv python3.8-dev

# Ensure python3 is default
echo "Setting python3 as the default..."
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
apt-get -y update
apt-get -y install python3.8-venv
# Ready to go!
echo "You're good to go! - 1"
echo "You're good to go! - 2"
# exit 0
