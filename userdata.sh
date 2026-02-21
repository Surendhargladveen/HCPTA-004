#!/bin/bash
set -e

# Update system
sudo apt update -y

# Install nginx
sudo apt install nginx -y

# Start and enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a stylish HTML page
sudo tee /var/www/html/index.html > /dev/null <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Deployment</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4e73df, #1cc88a);
            color: white;
            text-align: center;
            padding-top: 100px;
        }
        .card {
            background: rgba(0, 0, 0, 0.4);
            padding: 40px;
            border-radius: 15px;
            width: 60%;
            margin: auto;
            box-shadow: 0 0 20px rgba(0,0,0,0.3);
        }
        h1 {
            font-size: 45px;
            margin-bottom: 20px;
        }
        p {
            font-size: 20px;
        }
        .footer {
            margin-top: 30px;
            font-size: 14px;
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Hey there!</h1>
        <p>This EC2 instance was deployed using <b>Terraform</b>.</p>
        <p>Infrastructure as Code in action</p>
        <div class="footer">
            Powered by Nginx on Ubuntu
        </div>
    </div>
</body>
</html>
EOF