variable "vpc_id" {
  description = "ID of the VPC where the RDS instance will be deployed"
  type        = string
}
 
variable "subnet_ids" {
  description = "List of private subnet IDs for the RDS subnet group"
  type        = list(string)
}
