provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_eip" "mylb" {
  vpc = true
}

output "eip" {
  value = aws_eip.mylb.public_ip
}

resource "aws_s3_bucket" "mys3" {
  bucket = "my-tf-test-bucket-attributes"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3.bucket_domain_name
}
