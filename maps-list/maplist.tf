provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2" {
  ami           = "ami-0e1d30f2c40c4c701"
  instance_type = var.list[1]
}

variable "list" {
  type    = list(any)
  default = ["m5.large", "m5.xlarge", "t2.micro"]
}

variable "types" {
  type = map(any)
  default = {
    us-east-1  = "t2.micro"
    us-west-2  = "t2.nano"
    us-south-1 = "t2.small"
  }
}
