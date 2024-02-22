variable "ami"{
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t3.small"
}

variable "vpc_security_group_ids" {
  default = ["sg-038da0861b4c1788f"]
}

variable "zone_id" {
  default = "Z05403493ASGK93BQVTBE"
}

variable "components" {
  default = {
    frontend = { name = "frontend-dev" }
    mongodb = { name = "mongodb-dev " }
    catalogue = { name = "catalogue-dev" }
    user = { name = "user-dev" }
    redis = { name = "redis-dev" }
    cart = { name = "cart-dev" }
    mysql = { name = "mysql-dev" }
    shipping = { name = "shipping-dev" }
    rabbitmq = { name = "rabbitmq-dev" }
    payment = { name = "payment-dev" }
    dispatch = { name = "dispatch-dev" }

  }
}





resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value, "name", null)}.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [ lookup(lookup(aws_instance.instance,each.key,null),"private_ip", null) ]
}

#output "instances" {
#  value = aws_instance.instance
#}

