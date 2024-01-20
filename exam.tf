"provider" "azurerm" {}

"resource" "azurerm_resource_group" "example" {
  "location" = "West Europe"

  "name" = "example-resources"
}

"resource" "azurerm_service_plan" "example" {
  "location" = "${azurerm_resource_group.example.location}"

  "name" = "example-app-service-plan"

  "os_type" = "Windows"

  "resource_group_name" = "${azurerm_resource_group.example.name}"

  "sku_name" = "Y1"
}

"resource" "azurerm_storage_account" "example" {
  "account_replication_type" = "LRS"

  "account_tier" = "Standard"

  "location" = "${azurerm_resource_group.example.location}"

  "name" = "windowsfunctionappsa"

  "resource_group_name" = "${azurerm_resource_group.example.name}"
}

"resource" "azurerm_windows_function_app" "example" {
  "location" = "${azurerm_resource_group.example.location}"

  "name" = "example-windows-function-app"

  "resource_group_name" = "${azurerm_resource_group.example.name}"

  "service_plan_id" = "${azurerm_service_plan.example.id}"

  "site_config" = {}

  "storage_account_access_key" = "${azurerm_storage_account.example.primary_access_key}"

  "storage_account_name" = "${azurerm_storage_account.example.name}"
}

"windowsfunctionapp" = {
  "account_replication_type" = "lrs"

  "account_tier" = "Standard"

  "name" = "examplewindowsfunctionapp"

  "os_type" = "Windows"

  "sku_name" = "y1"
}
