resource "aws_iam_group_membership" "group1_membership" {
  name  = "group1-membership"
  group = "${aws_iam_group.group1.name}"

  users = [
    "${aws_iam_user.user1.name}",
    "${aws_iam_user.user2.name}",
  ]
}
