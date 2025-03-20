## VPC CReation using terform

Step 1. Need to create VPC using CIDR block ( 10.0.0.0/16)
Step 2. Create a public and private subnet for your VPC to deploy Ec2 instance

required itmes for subnet

* VPC ID
* CIDR blocks
* AV ( Avilabilty zones )
* Tags

Step 3 . Create a internet gw

required items:

* VPC ID
* Tags

Step 4. Create route table for routing traffic to subnets and add routes also ( target = "0.0.0.0/0", source = "internet-gw")

required items:
* VPC ID
* Route
* Tags

Step 5 . Associate route table with public and private subnet

required items:
* Route table ID
* subnet ID for public and private

  Step 6. Create security group for your Ec2 instance and add inboud and outboud rules
  * VPC ID
  * Ingress (Inbound rule)
  * egress (Outbound rule)
 
    

