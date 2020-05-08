#This is a sample Image 
FROM python:3.7
MAINTAINER soujyosen@gmail.com

RUN apt-get update && apt-get install -y \
wget \
unzip \
git

RUN mkdir /opt/infra_pipeline/
WORKDIR /opt/infra_pipeline/
RUN mkdir -p ./terraform_infra/volume/logs
RUN mkdir -p ./terraform_infra/volume/tfstates
#RUN echo 'export TF_LOG="TRACE" ' >> ~/.bashrc
#RUN echo 'export TF_LOG_PATH="terraform.txt"'  >> ~/.bashrc



COPY install_dependencies_startup.sh .
COPY serviceaccount.json ./terraform_infra/
COPY main.tf ./terraform_infra/
COPY trigger_infra_pipeline.sh .
RUN chmod 777 ./terraform_infra/main.tf
RUN chmod 777 ./install_dependencies_startup.sh
RUN chmod 777 ./trigger_infra_pipeline.sh
RUN ./install_dependencies_startup.sh
#ENTRYPOINT ["/usr/local/bin/install_dependencies_startup.sh"]
#RUN apt-get install –y nginx


CMD [ "./trigger_infra_pipeline.sh" ]