resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "frontend-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "mongodb-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "catalogue-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "user-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "cart-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "redis-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "mysql-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "shipping-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "rabbitmq-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "payment-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z05403493ASGK93BQVTBE"
  name    = "dispatch-dev.vdevops562.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
