


variable "vpc_security_groups" {
  default = ["sg-038da0861b4c1788f"]
}

variable "zone_id" {
  default = "Z05403493ASGK93BQVTBE"

}

variable "components" {
  default = {
    name = frontend
    instance_type = "t3.micro"
  }
   name = cart
   instance_type = "t3.micro"
}