resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name      = "terraform"

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("terraform.pem")
      host        = self.public_ip
    }

    inline = [
      "sudo apt update -y",
      "sudo apt install -y nginx && sudo systemctl start nginx && sudo systemctl enable nginx"
    ]
  }

  tags = {
    Name = "Webserver"
  }
}