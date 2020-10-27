# Update apt
echo "Updating apt..." | wall -n
apt update

# Install virtualenv package
echo "Installing python development packages..." | wall -n
apt install -y python3.8-venv python3.8-dev

# Ensure python3 is default
echo "Setting python3 as the default..." | wall -n
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1

# Ready to go!
echo "You're good to go!" | wall -n

exit 0
