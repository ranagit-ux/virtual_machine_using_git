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