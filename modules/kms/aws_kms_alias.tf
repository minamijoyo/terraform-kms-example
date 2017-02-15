resource "aws_kms_alias" "alias" {
  name          = "alias/${var.key_name}"
  target_key_id = "${aws_kms_key.key.key_id}"
}
