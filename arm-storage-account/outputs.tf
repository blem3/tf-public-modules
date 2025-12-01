output "storage_account_name" {
  value = jsondecode(azurerm_resource_group_template_deployment.storage.output_content).storageAccountName.value
}

output "storage_account_id" {
  value = jsondecode(azurerm_resource_group_template_deployment.storage.output_content).storageAccountId.value
}

output "primary_endpoints" {
  value = jsondecode(azurerm_resource_group_template_deployment.storage.output_content).primaryEndpoints.value
}