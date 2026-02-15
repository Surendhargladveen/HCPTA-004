resource "aws_instance" "linux-vm" {
    ami           = "ami-0b6c6ebed2801a5cb"
    instance_type = "t2.micro"
    key_name = "terraform"
    count = 3
    
    tags = {
        Name = var.user-name[count.index]
    }
}

variable "user-name" {
    type = list(string)
    default = ["Surendhar","roopesh","rahul"]
}