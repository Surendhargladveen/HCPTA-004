resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name      = "terraform"

  provisioner "local-exec" {
    command = "echo publicIP: ${self.public_ip}, PrivateIP: ${self.private_ip} >> App-VM_ips.txt"
  }

  tags = {
    Name = "App-VM"
  }
}