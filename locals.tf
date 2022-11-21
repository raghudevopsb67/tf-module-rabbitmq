locals {
  SSH_USER = jsondecode(data.aws_secretsmanager_secret_version.roboshop.secret_string)["SSH_USER"]
  SSH_PASS = jsondecode(data.aws_secretsmanager_secret_version.roboshop.secret_string)["SSH_PASS"]
}

