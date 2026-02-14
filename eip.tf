resource "aws_instance" "EIP" {
    ami           = "ami-0b6c6ebed2801a5cb"
    instance_type = "t2.micro"
    
    tags = {
        Name = "EIP"
    }
}

resource "aws_eip" "IP" {
   instance = aws_instance.EIP.id
   domain = "vpc"
}