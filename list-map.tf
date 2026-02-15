resource "aws_instance" "linux-vm" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = var.instance_size["xlarge4"]  # here we are using the first value from the list variable "instance_type"  
    
    tags = {
        Name = "surendhar-linux-vm"  
}
}       # here we can use list or map values inside the resource block, but we need to make sure that the variable is defined correctly.


# list of instance types to their corresponding values
variable "instance_type" {
    description = "The instance type for the EC2 instance"
    default     = ["t2.small", "t2.medium", "t2.large", "t2.xlarge"]
}

# Mapping the instance types to their corresponding values
variable "instance_size" {
  description = "The instance type for the EC2 instance"
  default     = {
    "small1" = "t2.small",
    "medium2" = "t2.medium",
    "large3" = "t2.large",
    "xlarge4" = "t2.xlarge",
  }
}

output "size" {
    value = var.instance_size["xlarge4"]
}