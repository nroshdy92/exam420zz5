output "function_app_id" {
  description = "The ID of the created Azure Function App"
  value       = azurerm_windows_function_app.example.id
}

output "function_app_url" {
  description = "The URL of the created Azure Function App"
  value       = azurerm_windows_function_app.example.default_hostname
}
