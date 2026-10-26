terraform {
  backend "azurerm" {
    resource_group_name  = "rg-production-application"
    storage_account_name = "sttfstatecompanydev"   # must be globally unique
    container_name       = "tfstate"
    key                  = "dev/resource-group.tfstate"
  }
}