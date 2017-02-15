module "test_kms" {
  source     = "./modules/kms"
  key_name   = "test"
  account_id = "111122223333"
}
