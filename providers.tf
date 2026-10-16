
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.9.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "rg4"
    storage_account_name = "laxmitfstate20261014"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "24abb81d-d230-4090-8aa9-3e068e70c781"
}
