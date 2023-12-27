variable "sshport" {
  type    = number
  default = 22
}

variable "enabled" {
  type    = bool
  default = true
}

variable "mylist" {
  type    = list(string)
  default = ["Value1", "Value2"]
}

variable "mymap" {
  type = map
  default = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpcname
    SshPort = var.sshport
    Enabled = var.enabled
    ListElement = var.mylist[0]
    MyMapElement = var.mymap.Key1
  }
}
