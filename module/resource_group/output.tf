output "name" {
    #output always write value
    value=azurerm_resource_group.rg_module.name
}

output "id" {
    value=azurerm_resource_group.rg_module.id
}

output "location" {
    value=azurerm_resource_group.rg_module.location
}
