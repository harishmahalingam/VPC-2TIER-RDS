terraform {
  backend "s3" {
    bucket = "my-demo-13425"
    key    = "my-demo-13425/vpc-2tier-rds"
    region = "us-east-1"
  }
}
