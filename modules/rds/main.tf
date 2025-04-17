variable "vpc_id" {
  description = "ID of the VPC where the EC2 instance will be deployed"
  type        = string
}
 
variable "subnet_id" {
  description = "ID of the public subnet for the EC2 instance"
  type        = string
}
 
variable "key_name" {
  description = "Name of the existing EC2 Key Pair to enable SSH access"
  type        = string
  default     = "test-keypair"
}

variable "instance_type" {
  description = "Name of the existing EC2 Key Pair to enable SSH access"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "ID of the public subnet for the EC2 instance"
  type        = string
  default     = "ami-084568db4383264d4"
}
