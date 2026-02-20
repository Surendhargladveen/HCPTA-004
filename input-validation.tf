variable "instance_type" {
  type = string

  # here I could'nt provide the input value - will as a part of plan/apply command.

  validation {
    condition     = contains(["t2.micro", "t2.medium"], var.instance_type)
    error_message = "Error: Bro please provide a instance_type value either t2.micro or t2.medium"
  }
}

resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = var.instance_type
  key_name      = "terraform"

  tags = {
    Name = "Surendhar-VM"
  }
}