resource "azurerm_key_vault" "main" {
  name                = var.key_vault_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name                 = "standard"  # Can be 'standard' or 'premium'
  tenant_id           = var.tenant_id
  enabled_for_deployment = true
  enabled_for_disk_encryption = true
  enabled_for_template_deployment = true

  tags = {
    environment = "production"
  }
}

resource "azurerm_key_vault_access_policy" "example" {
  key_vault_id = azurerm_key_vault.main.id
  tenant_id    = var.tenant_id
  object_id    = var.object_id

  key_permissions = [
    "get",
    "list",
    "create",
    "update",
    "delete"
  ]

  secret_permissions = [
    "get",
    "list",
    "set",
    "delete"
  ]
}

output "key_vault_id" {
  value = azurerm_key_vault.main.id
}

output "key_vault_uri" {
  value = azurerm_key_vault.main.vault_uri
}
