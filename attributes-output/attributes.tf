# Define provider configuration
provider "aws" {
  region            = "us-east-1"
  access_key        = "XXXXXXXX"
  secret_key        = "XXXXXXXX"
}
/*
resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb
}
*/
resource "aws_s3_bucket" "mys3" {
  bucket = "my-harsh-s3-bucket-001"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3.bucket_domain_name
}
