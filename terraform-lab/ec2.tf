provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}


resource "aws_instance" "instance" {
  ami = "ami-0d773a3b7bb2bb1c1"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.instance.public_ip} > ip_address.txt"
  }
}
