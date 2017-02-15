resource "aws_iam_policy_attachment" "test_kms_policy_attachment" {
  name = "test-kms-policy-attachment"

  groups = ["${aws_iam_group.group1.name}"]

  policy_arn = "${module.test_kms.iam_policy_arn}"
}
