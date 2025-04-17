resource "aws_db_subnet_group" "rds_subnet" {
  name       = "rds-subnet-group"
  subnet_ids = var.subnet_ids
}
 
resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
#  name                 = "mydb"
  username             = "admin"
  password             = "MySecurePass123"
  skip_final_snapshot  = true
db_subnet_group_name = aws_db_subnet_group.rds_subnet.name
vpc_security_group_ids = [aws_security_group.rds_sg.id]
}
 
resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Allow access from EC2"
  vpc_id      = var.vpc_id
 
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
cidr_blocks = ["10.0.1.0/24"] # Public subnet CIDR
  }
 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
