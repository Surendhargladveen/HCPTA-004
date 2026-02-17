resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name      = "terraform"

  tags = {
    Name = "MyLinuxVM"
  }
}

# terraform only load .tf and .tf.json files in the current directory automatically 
# terraform will not load files from the subdirectory.