resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = local.instance_type[terraform.workspace]
}

locals {
  instance_type = {
    dev = "t2.micro"
    stage = "t2.large"
  }
}