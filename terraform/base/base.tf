provider "aws" {
  region  = "${var.region}"
  version = "~> 1.14"
}

resource "aws_instance" "base" {
  # ubuntu-core/images/hvm-ssd/ubuntu-core-16-amd64-server-20161108
  ami           = "${var.ami}"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
}
