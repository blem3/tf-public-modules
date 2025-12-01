resource "azurerm_resource_group_template_deployment" "storage" {
  name                = "storage-deployment"
  resource_group_name = var.resource_group_name
  deployment_mode     = "Incremental"
  template_content    = file("${path.module}/storage-account.json")

  parameters_content = jsonencode({
    "storageAccountName" = {
      value = var.name
    }
    "location" = {
      value = var.location
    }
    "storageAccountSku" = {
      value = var.sku
    }
  })
}