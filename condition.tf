resource "aws_instance" "linux-vm" {
    ami           = "ami-0b6c6ebed2801a5cb"
    instance_type = var.env == "prod" ? "t2.large" : "t2.micro"
    key_name = "terraform"
    
    tags = {
        Name = "MyLinuxVM"
    }
}

variable "env" {
   default = "prod"
}

#syntax for condition is: condition ? true_value : false_value