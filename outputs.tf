output "id" {
  value       = azurerm_log_analytics_workspace.this.id
  description = "Specifies the resource id of the log analytics workspace"
}

output "location" {
  value       = azurerm_log_analytics_workspace.this.location
  description = "Specifies the location of the log analytics workspace"
}

output "name" {
  value       = azurerm_log_analytics_workspace.this.name
  description = "Specifies the name of the log analytics workspace"
}

output "resource_group_name" {
  value       = azurerm_log_analytics_workspace.this.resource_group_name
  description = "Specifies the name of the resource group that contains the log analytics workspace"
}

output "workspace_id" {
  value       = azurerm_log_analytics_workspace.this.workspace_id
  description = "Specifies the workspace id of the log analytics workspace"
}

output "primary_shared_key" {
  value       = azurerm_log_analytics_workspace.this.primary_shared_key
  description = "Specifies the workspace key of the log analytics workspace"
  sensitive   = true
}
