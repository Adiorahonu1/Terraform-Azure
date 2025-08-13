# Terraform-Azure
# Terraform Azure Infrastructure Deployment

This project automates the provisioning of **Microsoft Azure** infrastructure using **Terraform**.  
It includes remote backend configuration for state management and deploys a complete Azure environment — networking, storage, and a Linux virtual machine.

> **Important:** The Azure Storage Account used for the Terraform remote backend was **created only after** the initial provisioning of the Azure environment by executing the Terraform configuration. This storage account is then used to maintain the Terraform state remotely for subsequent deployments and state management.

---

## 📸 Project Architecture Diagram
*<img src="images/Deploying_Azure_Services_with_Terraform.avif" alt="Azure Firewall Subnet Configuration" width="600">  


---

## 🚀 Project Overview
- **Cloud Provider:** Microsoft Azure
- **IaC Tool:** Terraform
- **Backend:** Azure Storage Account (remote state)
- **Status:** ✅ Successfully deployed on Azure

---

## 📂 Repository Structure
---
```bash
.
├── backend.tf # Remote backend configuration (Azure Storage)
├── main.tf # Main Terraform configuration (resource definitions)
├── variables.tf # Variable declarations (name, type, default)
├── terraform.tfvars # Variable values (customized for deployment)
├── provider.tf # Azure provider configuration
├── README.md # Project documentation
```
---
markdown
Copy
Edit

**Variable Separation:**
- `variables.tf` contains **variable definitions** (name, type, and description).
- `terraform.tfvars` contains **variable values** — making it easy to change environments without editing the main configuration.

---

## ⚙️ Prerequisites
Before deploying:
1. Install [Terraform](https://developer.hashicorp.com/terraform/downloads)
2. Install [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
3. Authenticate to Azure:
   ```bash
   az login

# 🛠 Setup Instructions
## 1️⃣ Clone the repository
  ```bash

  git clone https://github.com/Adiorahonu1/Terraform-Azure.git
  cd Terraform-Azure
  ```
## 2️⃣ Initialize Terraform
```bash

terraform init
```
This will configure the backend (from backend.tf) and download necessary provider plugins.

>Note: The backend storage account is created after the initial run, so the first run may use a local state.
## 3️⃣ Validate configuration
```bash
terraform validate
```
## 4️⃣ Review the plan
```bash

terraform plan
```
5️⃣ Deploy to Azure
```bash

terraform apply
```
# 📦 Resources Created

## From `main.tf`
- **`azurerm_resource_group`** – Resource container  
- **`azurerm_storage_account`** – Storage for backend and data  
- **`azurerm_storage_container`** – Blob container for remote state  
- **`azurerm_virtual_network`** – Private network  
- **`azurerm_subnet`** – Subdivision of the VNet  
- **`azurerm_network_interface`** – NIC for the VM  
- **`azurerm_linux_virtual_machine`** – Ubuntu Linux VM  

---

## 📷 Azure Deployment Proof
*(Insert screenshot here of successful Azure deployment in portal)*

---

## 🖼 Architecture Diagram

<img src="images/Screenshot 2025-08-12 at 15.08.42.png" alt="Terraform Azure Architecture" width="600"> 
---

## 🔒 Security Notes
- `.terraform/` and `terraform.tfstate` are excluded via `.gitignore`
- `secrets.txt` is **not** committed to version control
- All sensitive data is handled via variables and optionally via **Azure Key Vault**

---

## 📜 License
This project is licensed under the **MIT License**.


