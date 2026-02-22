module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "5.9.1"
}


# This is a ready-made module install from terraform registry, you can use it as is or customize it to your needs.