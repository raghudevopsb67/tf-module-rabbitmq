data "aws_ami" "centos-8-ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

data "aws_secretsmanager_secret" "roboshop" {
  name = "roboshop/all-secrets"
}

data "aws_secretsmanager_secret_version" "roboshop" {
  secret_id = data.aws_secretsmanager_secret.roboshop.id
}



