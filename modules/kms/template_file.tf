data "template_file" "kms_policy" {
  template = "${file("${path.module}/kms_policy.json.tpl")}"

  vars {
    account_id = "${var.account_id}"
  }
}
