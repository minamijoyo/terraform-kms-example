resource "aws_iam_policy" "kms" {
  name        = "kms-${var.key_name}-policy"
  path        = "/"
  description = ""
  policy      = "${data.aws_iam_policy_document.kms.json}"
}
