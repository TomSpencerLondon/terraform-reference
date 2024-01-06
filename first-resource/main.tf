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
