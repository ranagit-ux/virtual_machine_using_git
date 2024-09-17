
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "d4817842-5905-48e7-a1a0-4b46934c0f9c"

}
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "gitkeyvault" {
  name                = "gitkeyvaultranaji"
  location            = "west europe"
  resource_group_name = "rgusinggit"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"


}
