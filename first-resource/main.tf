variable "vpcname" {
  type    = string
  default = "myvpc"
}

variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpcname
  }
}
