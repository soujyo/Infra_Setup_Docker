#!/bin/bash

echo 'export TF_LOG="TRACE" ' >> ~/.bashrc
echo 'export TF_LOG_PATH="/opt/infra_pipeline/terraform_infra/volume/logs/terraform.log"'  >> ~/.bashrc
echo 'export TF_DATA_DIR=/opt/infra_pipeline/terraform_infra/volume/tfstates/.terraform terraform init' >> ~/.bashrc
echo 'export TF_DATA_DIR=/opt/infra_pipeline/terraform_infra/volume/tfstates/.terraform terraform apply' >> ~/.bashrc

echo "Downloading and Installing dependencies"
#Terraform
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip terraform_0.12.24_linux_amd64.zip
cp terraform /usr/local/bin
#Vault
#wget https://releases.hashicorp.com/vault/1.4.1/vault_1.4.1_linux_amd64.zip
#unzip vault_1.4.1_linux_amd64.zip
#cp vault /usr/local/bin
#chmod +x /usr/local/bin





#repo_name
###git pull origin master "TexttoSpeech"
##cd ./terrafom
##terrafom init,apply
