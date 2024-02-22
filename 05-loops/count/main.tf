variable "components"
{
  default = ["frontend", "mongodb"]
}

resource "aws_instance" "frontend" {
  count = length(var.components)
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

  tags = {
    Name = element(var.components.count.index)
  }
}


#dont use count in the project as it is based on the index,if you add the component at the front it will destroy the exected one.