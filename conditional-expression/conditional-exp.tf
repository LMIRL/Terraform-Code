provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

variable "flag" {}

resource "aws_instance" "env1" {
  ami           = "ami-0e1d30f2c40c4c701"
  instance_type = "t2.micro"
  count         = var.flag == true ? 2 : 0
}

resource "aws_instance" "env2" {
  ami           = "ami-0e1d30f2c40c4c701"
  instance_type = "t2.nano"
  count         = var.flag == false ? 1 : 0
}
