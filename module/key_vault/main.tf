data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = var.sku_name
  soft_delete_retention_days = 7
  purge_protection_enabled   = false          # practice ke liye false

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = ["Get", "List", "Set", "Delete", "Purge"]
  }

  tags = var.tags
}

resource "azurerm_key_vault_secret" "vm_username" {
  name         = "vm-admin-username"
  value        = var.vm-admin-username
  key_vault_id = azurerm_key_vault.keyvault.id
}
resource "azurerm_key_vault_secret" "vm_password" {
  name         = "vm-admin-password"
  value        = var.vm-admin-password
  key_vault_id = azurerm_key_vault.keyvault.id
}