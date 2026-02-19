resource "aws_instance" "linux-vm" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.xlarge"
  key_name      = "terraform"
  depends_on    = [aws_s3_bucket.my_bucket]

  tags = {
    Name = "Surendhar-VM"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "gladveen-terraform-bucket"
}

// Here I'm explicitly defined the dependency for ec2 and s3 bucket.
// Using depends_on, we can ensure that the S3 bucket is created before the EC2 instance is provisioned.