terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
    source = "github.com/VadymMelnyk/terraform-azurerm-resource_group_storage?ref=1.0.0"

    resource_group_name   = "my-resource-group"
    storage_account_name  = "mystorageaccount"
    location              = "East US"
}