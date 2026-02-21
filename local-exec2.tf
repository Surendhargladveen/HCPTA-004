resource "aws_iam_user" "Man" {
  name = "Man"

  provisioner "local-exec" {
    command = "echo User ${aws_iam_user.Man.name} has been created >> user_data.txt"
    when    = create
  }

  provisioner "local-exec" {
    command = "echo User ${self.name} has been destroyed >> user_data.txt"
    when    = destroy
  }
}