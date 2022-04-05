provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

variable "ports" {
  type    = list(number)
  default = [8201, 8202, 8300]
}

resource "aws_security_group" "dynamic-block-demo" {
  name = "my-security-group"
  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
