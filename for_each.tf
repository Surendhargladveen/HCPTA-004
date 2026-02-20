variable "user" {
  type    = set(string)
  default = ["ram", "surendhar", "john", "doe", "jane"]
}

resource "aws_iam_user" "name" {
  for_each = var.user
  name     = each.value
}

# #for_each meta-argument only allows set of strings and map.