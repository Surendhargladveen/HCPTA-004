resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.xlarge"
  key_name      = "terraform"

  tags = {
    Name = "Surendhar-VM"
    creation_date = "${timestamp()}"
  }

  lifecycle {
    ignore_changes = [ tags ]
  }
}