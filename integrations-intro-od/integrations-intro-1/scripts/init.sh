# Update apt
#echo "Updating apt..."
#apt update

# Install virtualenv package
#echo "Installing python development packages..."
#apt install -y python3.8-venv python3.8-dev

# Ensure python3 is default
echo "Setting python3 as the default..."
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1

# Ready to go!
echo "You're good to go!"

# exit 0
