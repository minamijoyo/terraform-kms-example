data "aws_iam_policy_document" "kms" {
  statement {
    sid = "AllowUseOfTheKey"

    # https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
    actions = [
      "kms:Encrypt",
      "kms:Decrypt",
      "kms:ReEncrypt*",
      "kms:GenerateDataKey*",
      "kms:DescribeKey",
    ]

    resources = ["${aws_kms_key.key.arn}"]
  }
}
