variable "ami" {}
variable "region" {}
variable "instance_type" {}
variable "access_key" {}
variable "secret_key" {}


resource "aws_instance" "terraform-cloud-demo-server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id   = data.aws_subnet.subnet1.id
  tags = {
   Name = "terraform-cloud-demo-server" 
  }
}
