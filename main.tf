module "networking" {
  source   = "./modules/networking"
  ec2_cidr = module.ec2.ec2_cidr
}

module "ec2" {
  source         = "./modules/ec2"
  vpc            = module.networking.vpc.vpc_id
  key_name       = module.key_gen.key_name
  subnet_id      = module.networking.vpc.public_subnets[0]
  security_group = [module.networking.jenkins-main-sg.id]
}

module "key_gen" {
  source = "./modules/aws_keys"
}

module "ec2_node" {
  source         = "./modules/node_ec2"
  vpc            = module.networking.vpc.vpc_id
  key_name       = module.key_gen.key_name
  subnet_id      = module.networking.vpc.public_subnets[0]
  security_group = [module.networking.jenkins-node-sg.id]
}


