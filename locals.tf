# variable "date" {
#    default = "Current date and time: ${timestamp()}"
# }

# we can't be able to pass the function in the variable, so we need to use locals to store the value of the function

locals {
   tag = {
     Date = "Current date and time: ${timestamp()}"
     Name = "Surendhar-VM"
   }
}

resource "aws_instance" "VM-1" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t2.micro"

    tags = {
      Date = local.tag.Date
      Name = local.tag.Name
    }
}