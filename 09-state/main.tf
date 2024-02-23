terraform {
  backend "s3" {
    bucket = "tf-statefile-v562"
    key    = "09-state/terraform.tf.state"
    region = "us-east-1"
  }
}

variable "test" {
  default = "Hello World"

}

output "test" {
  value = var.test
}