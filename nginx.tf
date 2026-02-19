resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name      = "terraform"
  user_data     = file("./userdata.sh")

  tags = {
    Name = "Nginx-VM"
  }

  lifecycle {
    create_before_destroy = true
  }
}

output "web-url" {
  value = "http://${aws_instance.linux-vm.public_ip}:80"
}