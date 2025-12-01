variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "storage_account_sku" {
  description = "The SKU of the storage account"
  type        = string
  default     = "Standard_LRS"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
  default     = null
}

variable "tenant_id" {
  description = "The Azure Tenant ID"
  type        = string
  default     = null
}