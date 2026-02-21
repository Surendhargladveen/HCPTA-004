resource "aws_iam_user" "Man" {
  name = "Man"

  provisioner "local-exec" {
    command    = "echo User ${aws_iam_user.Man.name} has been created at ${timestamp()} >> user_data.txt"
    on_failure = continue
  }
}

# if the provisioner fails, the resource will still be created
# it won't mark taint or fail the resource creation, it will just log the failure and continue with the next steps in the Terraform execution plan.