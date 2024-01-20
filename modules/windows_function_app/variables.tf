variable "app_name" {
  description = "The name of the Azure Function App"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources should be created"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
}

variable "storage_account_access_key" {
  description = "The access key for the Azure Storage Account"
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the Azure App Service Plan"
  type        = string
}
