resource "aws_instance" "linux-vm" {
    ami           = "ami-0b6c6ebed2801a5cb"
    instance_type = "t2.xlarge"
    key_name = "terraform"

    tags = {
        Name = "Surendhar-VM"
    }

    lifecycle {
    prevent_destroy = true
    }
}

# # This prevent_destroy lifecycle will prevent the instance from being destroyed.