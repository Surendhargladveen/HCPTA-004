resource "aws_iam_user" "surendhar" {
  name  = "surendhar-${count.index}"
  count = 6
}

output "name" {
  value = aws_iam_user.surendhar[*].name
}