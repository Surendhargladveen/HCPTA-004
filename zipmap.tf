resource "aws_iam_user" "SG" {
  name  = var.username[count.index]
  count = 3
}

variable "username" {
  type    = list(string)
  default = ["surendhar", "roopesh", "melvin", "gladveen"]
}

output "name" {
  value = aws_iam_user.SG[*].name
}

output "arn" {
  value = aws_iam_user.SG[*].arn
}

output "combine" {
  value = zipmap(aws_iam_user.SG[*].name, aws_iam_user.SG[*].arn)
}