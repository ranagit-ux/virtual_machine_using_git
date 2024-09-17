data "azurerm_subnet" "subnet" {
   for_each = var.vmgit
  name                 = each.value.subname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_key_vault" "keyvult" {
  name                = "gitkeyvaultranaji"
  resource_group_name = "rgusinggit"
}

# output "vault_uri" {
#   value = data.azurerm_key_vault.example.vault_uri
# }