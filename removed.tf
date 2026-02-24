# resource "aws_instance" "linux-vm" {
#   ami           = "ami-0b6c6ebed2801a5cb"
#   instance_type = "t2.micro"
#   key_name      = "terraform"

#   tags = {
#     Name = "Mankantha"
#   }
# }

# Now I don't want this resource to be managed by terraform
# I'm using removed block to removed this from my both configuration and state file
# This will not delete the resource from AWS but it will remove it from terraform management

removed {
  from = aws_instance.linux-vm
  lifecycle {
    destroy = false
  }
}