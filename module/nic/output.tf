
output "name" {
  value = azurerm_network_interface.nic.name
}

output "nic_id" {
  value = azurerm_network_interface.nic.id
}

output "location" {
  value = azurerm_network_interface.nic.location
}

output "subnet_id" {
  value = azurerm_network_interface.nic.ip_configuration[0].subnet_id
}
