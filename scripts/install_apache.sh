#!/bin/bash
# Update the system
sudo yum update -y

# Install Apache Web Server
sudo yum install -y httpd

# Start Apache and make sure it stays on after a reboot
sudo systemctl start httpd
sudo systemctl enable httpd

# Create a simple "Hello World" page
echo "<h1>Goldmine 3-Tier Architecture: Web Server Active</h1>" > /var/www/html/index.html