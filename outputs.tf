output "id" {
  description = "Resource group generated id"
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "Resource group location (region)"
  value       = azurerm_resource_group.this.location
}

output "name" {
  description = "Resource group name"
  value       = azurerm_resource_group.this.name
}