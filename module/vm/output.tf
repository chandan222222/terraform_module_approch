output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.lvm.id
}

output "name" {
  description = "The Name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.lvm.name
}


/*output "vm_private_ip" {
  description = "Private IP address of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.lvm.private_ip_address
}

*

output "vm_principal_id" {
  description = "The Principal ID of the system-assigned identity of the VM (if enabled)"
  value       = try(azurerm_linux_virtual_machine.lvm.identity[0].principal_id, null)
}

output "virtual_machine_id" {
  description = "Dev Virtual Machine ID"
  value       = module.vm.vm_id
}

output "virtual_machine_private_ip" {
  description = "Dev Virtual Machine Private IP"
  value       = module.vm.vm_private_ip
}

*/