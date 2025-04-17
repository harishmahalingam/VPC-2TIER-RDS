provider "aws" {
  region = var.aws_region
}
 
module "vpc" {
  source = "./modules/vpc"
  vpc_name = "my-vpc"
}
 
module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
  key_name = var.key_name
}
 
module "rds" {
  source = "./modules/rds"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
}
