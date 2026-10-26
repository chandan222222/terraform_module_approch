output "id" {
  value = azurerm_key_vault.keyvault.id
}

output "vm-admin-username" {
  value = azurerm_key_vault_secret.vm_username.value
}

output "vm-admin-password" {
  value = azurerm_key_vault_secret.vm_password.value
}