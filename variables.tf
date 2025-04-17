
variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}
 
variable "key_name" {
  description = "Name of the existing EC2 Key Pair to enable SSH access"
  type        = string
  default     = "test-keypair"
}
