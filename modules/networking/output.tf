output "vpc" {
  value = module.vpc
}

output "jenkins-main-sg" {
  value = aws_security_group.jenkins-main-sg
}

output "jenkins-node-sg" {
  value = aws_security_group.jenkins-node-sg
}
