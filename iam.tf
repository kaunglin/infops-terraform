resource "aws_iam_group" "developers" {
  name = "infops_general_s3_user_group"
}
resource "aws_iam_user" "infops_general_s3_user" {
  name = "infops_general_s3_user"
}

resource "aws_iam_group_membership" "infops_general_s3_user_membership" {
  name = "infops_general_s3_user_membership"

  users = [
    aws_iam_user.infops_general_s3_user.name
  ]

  group = aws_iam_group.developers.name
}