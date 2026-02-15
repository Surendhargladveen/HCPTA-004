resource "aws_iam_user" "users" {
   name = "user-${count.index}"
   count = 4
}