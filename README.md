# Terraform code to deploy a lambda with SNS to notify whenever a blockchain block is received.  

This folder contains scripts for bootstrapping the Infrastructure needed for the above task. 

How to setup the lambda?

1. please have aws profile saved with the name "assignment". It has both access and secret keys with permissions to deploy resources in AWS. 
2. Install terraform locally.
3. lambda source code can be modified from the path lambda-blockchain/placeholders/nodejs12.x/index.js file. (execute terraform apply -auto-approve command)
4. please create a subscription with "email" protocol for the sns topic "block-updates-topic" we will create using these scripts and confirm it before we use the same for notifications. 
5. Please update your AWS account id in the "TopicArn" of the lambda source code. 

commands to execute:
terraform init
terraform validate
terraform plan 
terraform apply
