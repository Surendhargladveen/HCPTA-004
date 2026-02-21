resource "aws_s3_bucket" "bucket" {
  bucket = "my-unique-bucket-name-20314"
}

moved {
  from = aws_s3_bucket.my_bucket
  to   = aws_s3_bucket.bucket
}



# I changed my resource local name from "my_bucket" to "bucket". Usually terraform will destroy and recreate the resource.
# Instead we can use moved block to tell terraform that the resource has been renamed and it should not be destroyed and recreated.