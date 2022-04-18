﻿#----------------------------------------------------------
# ACS730 - Project. 
# Deployment Steps
#
#----------------------------------------------------------

1.Create three S3 bucket for 3 different environment named as  “nonprod-group7” , “prod-group7” , “staging-group7”   manually to store the remote Terraform state of the environments.


3.We have created a load balancer in network module of prod , nonprod and staging.

4.Change directory to Assignment2/Project/nonprod/network/ and create public and private subnets in nonprod VPC. this the networking folder.

      cd Assignment2/Project/nonprod/network/
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply -–auto-approve

5.Now going to check webserver folder of the nonprod environment.Change directory to /Assignment2/Project/nonprod/webservers.Firstly we have created launch configuration and then further we have created autoscaling group. 


6. then, in  “Variables.tf” file from "nonprod" folder , update values of “my_private_ip” and “my_public_ip”. thses 2 variable are the public and private ip of the cloud 9 environment.
7.	Generate SSH key pairs 

      ssh-keygen -t rsa -f nonprod 


8.	run following command for webserver of the nonprod environment
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply --auto-approve

9.	 run the following command to get access of the ssh to bastion 

      ssh -i nonprod ec2-user@<bastion_public_ip>


Deployment of PROD environment

10.	first Create S3 bucket “prod-group7”
11.	Now change directory to /Assignment2/Project/prod/network directory 

      cd ../../prod/network/
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply --auto-approve

12.	Change directory to /Assignment2/Project/prod/webservers by running following command


13.	Create key-pairs for prod 
      ssh-keygen -t rsa -f prod
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply --auto-approve

Deployment of STAGING environment

10.	first Create S3 bucket “staging-group7”
11.	Now change directory to /Assignment2/Project/staging/network directory 

      cd ../../prod/network/
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply --auto-approve

12.	Change directory to /Assignment2/Project/staging/webservers by running following command


13.	Create key-pairs for staging 
      ssh-keygen -t rsa -f staging
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply --auto-approve
