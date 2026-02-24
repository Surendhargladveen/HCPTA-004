data "terraform_remote_state" "ec2" {
  backend = "s3"

  config = {
    bucket = "gladveen-terraform-state"
    key    = "env:/dev/HCPTA-004/prod.tfstate"
    region = "us-east-1"
  }
}


resource "aws_eip" "IP" {
  domain   = "vpc"
  instance = data.terraform_remote_state.ec2.outputs.ec2-id
}

# pull the output data from another terraform state file and use it to associate the EIP with the EC2 instance