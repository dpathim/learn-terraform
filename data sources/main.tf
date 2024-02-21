data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8*"
  owners      = ["973714476881"]
}

output "ami_id" {
  value = "data.aws_ami.ami"
}