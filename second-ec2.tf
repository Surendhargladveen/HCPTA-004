resource "aws_instance" "linux-vm" {
    ami           = var.ami
    instance_type = var.size
    key_name = "terraform"
    
    tags = {
        Name = "Surendhar-VM"
    }
}