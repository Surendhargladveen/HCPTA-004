resource "aws_instance" "linux-vm" {
    ami           = "ami-0b6c6ebed2801a5cb"
    instance_type = var.env == "prod" && var.region == "us-west-2" ? "t2.large" : "t2.micro"
    key_name = "terraform"
    
    tags = {
        Name = "MyLinuxVM"
    }
}

variable "env" {
   default = "prod"
}

variable "region" {
   default = "us-east-1"
}

#syntax for condition is: condition ? true_value : false_value
#Can pass condition expression for multiple conditions as well using logical operators like && and ||.
#In above example, if env is prod and region is us-west-2, then instance type will be t2.large, otherwise it will be t2.micro.