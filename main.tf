variable "ami" {}
variable "region" {}
variable "instance_type" {}

resource "aws_instance" "terraform-cloud-demo-server" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
   Name = "terraform-cloud-demo-server" 
  }
}
