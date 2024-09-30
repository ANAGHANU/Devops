resource "aws_secretsmanager_secret" "example" {
  name = "example"

  description = "This is an example secret."

  secret_string = jsonencode({
    "username" = var.username,
    "password" = var.password
  })
}
