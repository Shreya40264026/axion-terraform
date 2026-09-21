terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "shreya-axion-rg"
    storage_account_name = "shreyaaxionstorage"
    container_name       = "axion-container"
    key                  = "axion-terraform.tfvars"
  }
}


provider "azurerm" {
  features {}
}

