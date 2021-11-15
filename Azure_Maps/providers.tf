terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.0.1"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {}