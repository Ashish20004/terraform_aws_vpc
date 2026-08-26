## terraform_aws_vpc

Developed a terraform module to provision a production ready AWS VPC featuring public, private, amd database subnets along with internet Gateway NAT Gateway and Route tables


## How to use this module

```hcl
module "vpc" {
  source = "git::https://github.com/Ashish20004/terraform_aws_vpc.git?ref=main"

  project     = "roboshop"
  environment = "dev"

  vpc_cidr = "10.0.0.0/16"

  public_subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs  = ["10.0.11.0/24", "10.0.12.0/24"]
  database_subnet_cidrs = ["10.0.21.0/24", "10.0.22.0/24"]

  is_peering_required = false
}
```


## Features 

- Deploys a ready-to-use AWS VPC having a configurable CIDR block and DNS hostname enabled.
- Deploys public, private, and database subnets within multiple Availability Zones.
- Sets up an Internet Gateway to ensure that public subnets have internet access.
- Deploys a NAT Gateway along with an Elastic IP to ensure that there is internet access for private and database subnets.
- Sets up separate route tables and association of routes for each type of subnet.
- Allows VPC peering setup to be optional with the help of a configurable flag.
- Allows tagging of all AWS resources with configurable tags.