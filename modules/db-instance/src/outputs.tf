output "arn" {
  value = aws_db_instance.main.arn
}

output "id" {
  value = aws_db_instance.main.id
}

output "address" {
  value = aws_db_instance.main.address
}

output "secret_arn" {
  value = aws_db_instance.main.master_user_secret[0].secret_arn
}
