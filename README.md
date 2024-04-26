# Sentinel One Terraform 

- This Terraform repository deploys the Azure Sentinel extension to virtual machines within a specified Azure resource group.
`

## Update variables

```bash

resource_group = "lab resource group"
vm_names = [ "list of virtual machines "]
sentinel_apikey = "sentinel api key"
sentinel_token = "sentinel token key"
subscription_id = "lab subscription id "
tenant_id              = "subscription tenant id"
client_id                = "subscription clientid "
client_secret      = "subscription client secret"

```

## Terraform backend bucket configuration 

```bash

cd sentinel1

update below values in provider.tf file 

backend "azurerm" {
    resource_group_name  = "lab resourcegroup name"
    storage_account_name = "lab storage account name"
    container_name       = "contianer in the storage account"
    key                  = "terraform state file name "

    }
```

## Initialize Terraform

```bash 
cd sentinel
terraform init
```

## Run Terraform plan with the properties

```bash 
cd sentinel
terraform plan --var-file env.properties
```

## apply Terraform plan with the properties

```bash 
cd sentinel
terraform apply --var-file env.properties
```



