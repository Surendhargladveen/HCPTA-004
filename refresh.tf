resource "aws_instance" "vm" {
    ami           = "ami-0b6c6ebed2801a5cb"
    instance_type = "t2.micro"
    key_name = "terraform"
    
    tags = {
        Name = "MyLinuxVM"
    }
}

provider "aws" {
  region = "us-east-1"
}

# terraform refresh cmd, this guy is very dangerous if we change anything in the infrastructure,
# And execute the terraform refresh cmd, this will automatically update the state file without user review. It will blindly sync the state file with the real infrastructure, and if there are any changes in the infrastructure, it will update the state file accordingly. This can lead to unintended consequences if we are not careful. For example, if we have manually changed the infrastructure outside of terraform, and then run terraform refresh, it will update the state file to reflect those changes, which can cause issues when we later run terraform apply.
# instead of running terraform refresh, we can use terraform plan -refresh-only to see the changes without modifying the state file.