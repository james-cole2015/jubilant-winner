module "ec2_node_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "Jenkins Node Server"

  ami                    = "ami-0439517b5e436bdab"
  instance_type          = "t2.micro"
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = var.security_group
  subnet_id              = var.subnet_id
  user_data              = file("jenkins_install.sh")



  tags = {
    Environment = "dev"
    Name        = "Jenkins Node Server"
    platform    = "terraform"
    user        = var.user-name
    repo-name   = var.repo-name
    function    = "jenkins"
  }
}

resource "aws_ebs_volume" "ebs_vol_01" {
  #availability_zone = "us-east-1a"
  availability_zone = data.aws_availability_zones.available.names[0]
  size              = 16
  encrypted         = true

  tags = {
    Name      = "Jenkins Node Volume"
    user      = var.user-name
    repo-name = var.repo-name
    platform  = "terraform"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs_vol_01.id
  instance_id = module.ec2_node_instance.id
}

data "aws_availability_zones" "available" {
  state = "available"
}
