terraform {
  backend "s3" {
     bucket = "gladveen-terraform-state"
    key    = "production/prod.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}