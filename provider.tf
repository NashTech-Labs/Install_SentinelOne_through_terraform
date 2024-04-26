terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"

    }
  }

  backend "azurerm" {
    resource_group_name  = "DEV-RG"
    storage_account_name = "devrg"
    container_name       = "s1"
    key                  = "terraform.tfstate"
    subscription_id      = "xxxxxxxxxx-XXXXXXXXXXXX"
    tenant_id            = "xxxxxxxxxx-XXXXXXXXXXXX"
    client_id            = "xxxxxxxxxx-XXXXXXXXXXXX"
    client_secret        = "xxxxxxxxxx-XXXXXXXXXXXX"
  }

}

provider "azurerm" {
  subscription_id = "xxxxxxxxxx-XXXXXXXXXXXX-XXXXXXXXXXX"
  tenant_id       = "xxxxxxxxxx-XXXXXXXXXXXX-XXXXXXXXXXX"
  client_id       = "xxxxxxxxxx-XXXXXXXXXXXX-XXXXXXXXX"
  client_secret   = "xxxxxxxxxx-XXXXXXXXXXXX.XXXXXXXXXX"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
      # purge_soft_deleted_certificates_on_destroy = true
      # recover_soft_deleted_certificates          = true
    }
  }
}
