output "vault_public_ip" {
  value = aws_instance.vault_server.public_ip
}

output "vault_ui_url" {
  value = "http://${aws_instance.vault_server.public_ip}:8200/ui"
}

output "vault_server_name_upper" {
  value = upper(aws_instance.vault_server.tags["Name"])
}

output "vault_username" {
  value = data.vault_kv_secret_v2.myapp.data["username"]
  sensitive = true
}

output "vault_password" {
  value     = data.vault_kv_secret_v2.myapp.data["password"]
  sensitive = true
}