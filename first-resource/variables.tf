variable "vpcname" {
  type    = string
  default = "myvpc"
}

variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

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

variable "mytuple" {
  type    = tuple([string, number, string])
  default = ["cat", 1, "dog"]
}

variable "myobject" {
  type = object({ name = string, port = list(number) })
  default = {
    name = "Tom"
    port = [22, 25, 80]
  }
}