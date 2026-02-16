data "aws_instance" "foo" {
    filter {
      name = "tag:env"
      values = ["stage"]
    }
}