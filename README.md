Automated Linux User and Group Management Script 🚀

This repository contains a Bash script that automates the creation of users, groups, and file permissions on Linux systems. It's a time-saving solution for system administrators, DevOps engineers, and AI teams who need efficient user and access management.

Key Features
Interactive Input: Enter a username, group name, and password dynamically.
User Management: Automatically creates users and assigns them to specified groups.
Group Management: Checks if a group exists; creates one if it doesn't.
File Security: Creates a secure file with restricted permissions (440) to protect sensitive data.
Reusable: Run the script multiple times to manage new users, groups, and files effortlessly.
How to Use the Script

Clone the Repository
git clone https://github.com/<your-username>/<your-repo-name>.git
cd <your-repo-name>

Make the Script Executable

Run this command to grant execution permissions:
chmod +x user_group_setup.sh

Run the Script
Execute the script with root privileges:
sudo ./user_group_setup.sh
Provide Input:
The script will ask for:

Username: e.g., employee-1
Group Name: e.g., dev
Password: Secure password for the user
File Name: Name of the file to create (e.g., securefile.txt)

Example Workflow
Input:
Enter the username to create: employee-1  
Enter the group name to add the user to: dev  
Enter the password for the user: ********  
Enter the name of the file to create (e.g., securefile.txt): securefile.txt  

Output:
Group 'dev' does not exist. Creating it...  
Creating user 'employee-1'...  
User 'employee-1' created successfully.  
User 'employee-1' added to group 'dev'.  
Creating file 'securefile.txt' in employee-1's home directory...  
File '/home/employee-1/securefile.txt' created with restricted permissions (440).

### Final Setup ###
User: employee-1  
Group: dev  
File: /home/employee-1/securefile.txt  
-r--r----- 1 root root 0 Dec 15 14:00 /home/employee-1/securefile.txt

Why Use This Script?
Saves Time: Automates repetitive user and group management tasks.
Error-Free: Handles validations like group existence and secure permissions.
Secure: Ensures sensitive files are accessible only to authorized users.
Scalable: Reusable for managing multiple users, ideal for shared systems.
Use Cases
System Administration: Onboarding new users and managing group permissions.
DevOps: Configuring Linux environments for teams.
AI Teams: Securing datasets or model files in isolated user environments.
Prerequisites
Linux Environment (Ubuntu, CentOS, Debian, etc.)
Root Privileges (sudo access)
Bash Shell
Contributing

Feel free to fork the repository, submit issues, or create pull requests to improve the script.

License
This project is licensed under the MIT License.

Author
Created by Akshay.

This README provides clear instructions, a workflow example, and use cases, making it easy for anyone to understand and use your script! 🚀
