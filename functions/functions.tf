provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "us-east-1"
}

variable "ami" {
  type = map(any)
  default = {
    "us-east-1"  = "ami-0c02fb55956c7d316"
    "us-west-2"  = "ami-00ee4df451840fa9d"
    "ap-south-1" = "ami-04893cdb768d0f9ee"
  }
}

resource "aws_instance" "ec2" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
}

output "timestamp" {
  value = local.time
}
