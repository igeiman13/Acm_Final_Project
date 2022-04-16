#----------------------------------------------------------
# ACS730 - Assignment 2 
# Deployment Steps
#
#----------------------------------------------------------

1.	Create an S3 bucket “nonprod-assignment2-vidhi” manually to store the remote Terraform state

2.    going to Deploy of nonprod VPC. in nonprod vpc deployed, 2 public and private subnets.in 2 private subnet ,created 2 webserver and created nat gateway in one public subnet to access private webserver on the internet.

3.	Change directory to Assignment2/Project/nonprod/network/ and create public and private subnets in nonprod VPC. this the networking folder.

      cd Assignment2/Project/nonprod/network/
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply -–auto-approve

4.	now going to check webserver folder of the nonprod environment.Change directory to /Assignment2/Project/nonprod/webservers and deploy the webservers  into the subnet we just created


5.	then, in  “Variables.tf” file from "nonprod" folder , update values of “my_private_ip” and “my_public_ip”. thses 2 variable are the public and private ip of the cloud 9 environment.
6.	Generate SSH key pairs 

      ssh-keygen -t rsa -f nonprod 


7.	run following command for webserver of the nonprod vpc
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply --auto-approve

8.	 run the following command to get access of the ssh to bastion 

      ssh -i asignment2-nonprod ec2-user@<bastion_public_ip>


12.	To SSH to  webserver-1 and webserver-2 follow the below steps:
	Right click and download private key pair file save it on your desktop and  open with notepad

      vi ~/.ssh/pro
      copy the private key into the pro
      chmod 600  ~/.ssh/pro
      ssh -i  ~/.ssh/pro ec2-user@<private_ip_webserver1>

13.   Now SSH to 2nd webserver

     ssh -i  ~/.ssh/pro ec2-user@<private_ip_webserver2>

14.	To check webserver connectivity outside of webservers from bastion host run the following commands

	Curl  <private_ip_webserver1>
	Curl  <private_ip_webserver2>

Deployment of PROD environment

15.	first Create S3 bucket “prod-assignment2-vidhi”
16.	Now change directory to /Assignment2/Project/prod/network directory 

      cd ../../prod/network/
      terraform init
      terraform  fmt
      terraform  validate
      terraform plan
      terraform  apply --auto-approve

17.	Change directory to /Assignment2/Project/prod/webservers by running following command


18.	Create key-pairs for prod 
      ssh-keygen -t rsa -f prod
      terraform init
      terraform fmt
      terraform validate
      terraform plan
      terraform apply --auto-approve


Deployment of VPC-Peering

19.	Create S3 bucket manually “peer-acs730-assignment2-vidhi”
20.   in Variable.tf file, i added my your "Amazon Account ID" as default value for "owner". i run following command to grt my account id.
      aws sts get-caller-identity
21.	Change directory to “/Assignment2/Project/vpc-peering” by running following command


      terraform  init
      terraform  fmt
      terraform  validate
      terraform plan
      terraform  apply --auto-approve

      To Verify VPC peering between nonprod bastion host to prod linux instances



23.	again SSH to bastion 

      ssh -i asignment2-nonprod ec2-user@<bastion_public_ip>

24.	To SSH to webservers “Linux-1” and “Linux-2” follow the below steps:
     
      vi ~/.ssh/pro2
      
      chmod 600  ~/.ssh/pro
      ssh -i  ~/.ssh/prodkey ec2-user@<private_ip_Linux1>
      ssh -i  ~/.ssh/prodkey ec2-user@<private_ip_Linux2>

25. Cleaning up the prod and nonprod and vpc peering environment
    run following command in every environment of networking and webserver folder
    tf destroy --auto-approve






