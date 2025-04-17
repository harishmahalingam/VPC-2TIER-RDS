resource "aws_vpc" "main" {
cidr_block = "10.0.0.0/16"
}
 
resource "aws_subnet" "public" {
vpc_id = aws_vpc.main.id
cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
}
 
resource "aws_subnet" "private" {
  count                   = 2
vpc_id = aws_vpc.main.id
cidr_block = cidrsubnet("10.0.0.0/16", 8, count.index + 2)
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-${count.index + 1}"
  }
}
 
data "aws_availability_zones" "available" {}
 
resource "aws_internet_gateway" "gw" {
vpc_id = aws_vpc.main.id
}
 
output "vpc_id" {
value = aws_vpc.main.id
}
 
output "public_subnet_id" {
value = aws_subnet.public.id
}
 
output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}
