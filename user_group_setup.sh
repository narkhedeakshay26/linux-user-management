#!/bin/bash

# Automated Linux User and Group Management Script
echo "### Linux User and Group Management Script ###"

# Prompt for Inputs
read -p "Enter the username to create: " username
read -p "Enter the group name to add the user to: " groupname
read -sp "Enter the password for the user: " password
echo

# Step 1: Check and Create Group
if ! grep -q "^$groupname:" /etc/group; then
    echo "Group '$groupname' does not exist. Creating it..."
    sudo groupadd "$groupname"
else
    echo "Group '$groupname' already exists."
fi

# Step 2: Create User with Password
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
else
    echo "Creating user '$username'..."
    sudo useradd -m "$username"
    echo "$username:$password" | sudo chpasswd
    echo "User '$username' created successfully."
fi

# Step 3: Add User to Group
sudo gpasswd -a "$username" "$groupname"
echo "User '$username' added to group '$groupname'."

# Step 4: Create a Secure File in User's Home Directory
read -p "Enter the name of the file to create (e.g., securefile.txt): " filename
filepath="/home/$username/$filename"

echo "Creating file '$filename' in $username's home directory..."
sudo touch "$filepath"
sudo chown root:root "$filepath"
sudo chmod 440 "$filepath"
echo "File '$filepath' created with restricted permissions (440)."

# Step 5: Final Output
echo -e "\n### Setup Complete ###"
echo "User: $username"
echo "Group: $groupname"
echo "File: $filepath"
ls -l "$filepath"

echo -e "\nDone! You can now verify the setup."
