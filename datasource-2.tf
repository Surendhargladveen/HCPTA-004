provider "aws" {
   region = "eu-west-1"
}

data "aws_ami" "centos_linux" {
  most_recent      = true       # Get the most recent AMI that matches the filters
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["aws-parallelcluster-3.9.2-centos7-hvm-x86_64*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "foo" {
  ami           = data.aws_ami.centos_linux.id
  instance_type = "t2.micro"

  tags = {
    name = "centos_linux_vm"
  }
}