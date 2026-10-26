resource "azurerm_resource_group" "rg_module" {
  name     = var.name
  location = var.location
  tags     = var.tags

 # lifecycle {
   # prevent_destroy = var.prevent_destroy   # safety for prod
 # }
}