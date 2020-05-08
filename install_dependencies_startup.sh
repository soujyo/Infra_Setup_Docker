#!/bin/bash

echo "Downloading and Installing dependencies"

sudo apt-get install wget unzip
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip terraform_0.12.24_linux_amd64.zip
sudo cp terraform /usr/local/bin
sudo chmod +x /usr/local/bin