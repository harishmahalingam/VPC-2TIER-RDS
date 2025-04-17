terraform {
  backend "s3" {
    bucket = "my-demo-13425"
    key    = "vpc-2tier"
    region = "us-east-1"
  }
}
