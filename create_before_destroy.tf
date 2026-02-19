resource "aws_instance" "linux-vm" {
  ami           = "ami-00de0e2b10a1ebdb9"
  instance_type = "t2.micro"
  key_name      = "terraform"

  tags = {
    Name = "Surendhar-VM"
  }

  lifecycle {
    create_before_destroy = true
  }
}


# #now I use create_before_destroy lifecycle to avoid downtime when I change the ami id.