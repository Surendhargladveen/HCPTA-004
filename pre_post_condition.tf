variable "instance_type" {
  type = string
}

resource "aws_instance" "example" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = var.instance_type
  key_name = "terraform"

  lifecycle {
    precondition {
      condition     = var.instance_type == "t2.micro"
      error_message = "Error: BRo my code only supports t2.micro instance type."
    }
    postcondition {
      condition     = self.public_ip != ""
      error_message = "Instance must have a public IP."
    }
  }

  tags = {
    Name = "BRoCode!"
  }

}