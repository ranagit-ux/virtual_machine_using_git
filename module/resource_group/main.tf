resource "azurerm_resource_group" "rgwithgit" {
    for_each = var.rggit

    name = each.value.name
    location = each.value.location
  
}