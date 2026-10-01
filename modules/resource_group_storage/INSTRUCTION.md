# terraform-azurerm-resource_group_storage
# Terraform Azure Resource Group & Storage Account Module

This repository contains the task for creating and publishing a reusable Terraform module designed to provision an **Azure Resource Group** and a **Storage Account**.

---

## 📋 Tasks & Implementation Steps

### 1. Fork the Repository
Fork this repository into your GitHub account to execute the practical assignment.

---

### 2. Create the Terraform Module
Create the directory `modules/resource_group_storage` in the root of your repository with the following structure:

* **`main.tf`** — Resource declarations (`azurerm_resource_group` and `azurerm_storage_account`) and provider requirements.
* **`variables.tf`** — Input variables for dynamic configuration (resource group name, storage account name, location, replication tier, etc.).
* **`outputs.tf`** — Module output values (Resource Group ID/Name, Storage Account ID, Access Keys).

---

### 3. Publish the Module on GitHub
Publish the module by creating a separate public repository named according to Terraform's standard naming convention:

👉 **Repository Name:** `terraform-azurerm-resource_group_storage`

Repository Contents:
* `main.tf`, `variables.tf`, `outputs.tf` — Core module configuration files.
* `INSTRUCTION.md` — Detailed user guide with implementation examples.
* `LICENSE` — Open-source license (e.g., MIT or Apache 2.0).
* `.gitignore` — Ignores Terraform state files (`*.tfstate`), local cache (`.terraform/`), and sensitive variables (`*.tfvars`).

---

## 🚀 Usage Example

Example of referencing this published module in your Terraform root configuration:

```hcl
module "storage" {
  source = "[github.com/](https://github.com/)<your-github-username>/terraform-azurerm-resource_group_storage"

  resource_group_name  = "rg-app-prod"
  location             = "East US"
  storage_account_name = "stappprod987654"

  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}
