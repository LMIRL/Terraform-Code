provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2" {
  ami           = "ami-0e1d30f2c40c4c701"
  instance_type = "t2.micro"
}
