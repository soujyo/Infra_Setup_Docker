#!/bin/bash



. ~/.bashrc
echo $TF_LOG
echo $TF_LOG_PATH
cd ./terraform_infra
terraform init
terraform apply -auto-approve
sleep 10000