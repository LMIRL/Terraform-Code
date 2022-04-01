provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

locals {
  common_tags = {
    Owner   = "Team 1"
    service = "engineering"
  }
}
resource "aws_instance" "ec2" {
  ami           = "ami-0e1d30f2c40c4c701"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-east-1a"
  size              = 10
  tags              = local.common_tags

}
