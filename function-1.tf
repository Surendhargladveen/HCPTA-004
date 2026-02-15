resource "aws_iam_user" "user-1" {
   name = "Surendhar"
}

resource "aws_iam_policy" "policy-1" {
   name = aws_iam_user.user-1.name
   path = "/"
   description = "My test policy"
   policy = file("./policy.json")
}

resource "aws_iam_user_policy_attachment" "user_attach" {
  user       = aws_iam_user.user-1.name
  policy_arn = aws_iam_policy.policy-1.arn
}