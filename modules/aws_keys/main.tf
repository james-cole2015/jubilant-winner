resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "key_pair" {
  source     = "terraform-aws-modules/key-pair/aws"
  version    = "1.0.1"
  key_name   = "${var.repo-name}-${var.user-name}_tf-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "local_file" "created_keypair_to_local" {
  content         = tls_private_key.rsa.private_key_pem
  file_permission = "400"
  filename        = "${module.key_pair.key_pair_key_name}.pem"
}


