resource "aws_kms_key" "key" {
  policy = "${data.template_file.kms_policy.rendered}"
}
