variable "size" {
  type = map(string)
  default = {
    dev  = "t2.micro"
    prod = "t2.large"
  }
}

resource "aws_instance" "linux-vm" {
  for_each      = var.size
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = each.value #here it will pull the value of the map and assign to instance type
  key_name      = "terraform"

  tags = {
    Name = each.key #here it will pull the key of the map and assign to name tag
  }
}