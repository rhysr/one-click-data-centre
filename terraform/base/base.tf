provider "aws" {
  region  = "us-east-2"
  version = "~> 1.14"
}

resource "aws_instance" "base" {
  # ubuntu-core/images/hvm-ssd/ubuntu-core-16-amd64-server-20161108
  ami           = "ami-ad4812c8"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
}
