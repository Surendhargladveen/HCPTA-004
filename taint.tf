resource "aws_instance" "Hey-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  key_name      = "terraform"

  tags = {
    Name = "BroCOde-VM"
  }
}

# If something went wrong inside the vm. On that time we can user -replace flag to recreate the resource.
# terraform apply -replace="aws_instance.Hey-vm"
# If we use apply cmd - it say no changes. But if we use -replace flag it will destroy the existing resource and create a new one.
# which can help us to fix the issue. 