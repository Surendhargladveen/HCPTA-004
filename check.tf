resource "aws_security_group" "web_sg" {
  name = "web-sg"
}

resource "aws_instance" "web" {
  ami                    = "ami-0b6c6ebed2801a5cb"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = "terraform"

  tags = {
    Name = "Web-Server"
  }
}

check "ec2_sg_association_check" {

  assert {
    condition     = contains(aws_instance.web.vpc_security_group_ids, aws_security_group.web_sg.id)
    error_message = "EC2 instance is NOT associated with the required Security Group!"
  }

  assert {
    condition     = length(aws_instance.web.ami) > 0
    error_message = "EC2 instance does not have a valid AMI ID!"
  }

}

# Check is used to validate infrastructure condition globally across the configuration. 
# we can validate multiple conditions in a single check block, and it will report all the failed assertions together.