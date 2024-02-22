data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "ami" {
  value = data.aws_ami.ami
}



resource "aws_instance" "instance" {
  ami           = "data.aws_ami.ami.id"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-038da0861b4c1788f"]

}

#variable = "instance_type"{}