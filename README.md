# CI/CD with GitHub Actions, Azure & Terraform 🚀

This repository shows how to deploy a Flask web application to Azure using GitHub Actions, while provisioning infrastructure with Terraform. It went through two major stages:

---

## ✅ Version 1: CI/CD (`base` branch)

The first version focused on deploying code changes through GitHub Actions. Infrastructure was manually created via the Azure Portal.

### 🔧 What It Did

- Build & push Docker images to **Azure Container Registry (ACR)**
- Deploy the latest image to **Azure Web App for Containers**
- Run unit tests
- Security scans:
  - `Trivy` for image vulnerabilities
  - `Gitleaks` for secrets detection
  - `SonarCloud` for code quality

### 🔁 Trigger

- On **push to `master`**: build → push → deploy
- On **all pull requests**: run tests and scans

### 🛠️ Manually Precreated Resources

- Resource Group  
- ACR  
- App Service Plan  
- Web App  

---

## 🚀 Version 2: Terraform (`feature-terraform` branch)

The second version introduced **Terraform** to provision the infrastructure automatically.

### ⚙️ Infrastructure as Code

Terraform now provisions:

- ✅ Resource Group  
- ✅ ACR (Azure Container Registry)  
- ✅ App Service Plan  
- ✅ Azure Linux Web App  

### 🪄 Workflow

- You run `terraform apply` to create/update infra.
- Then manually run CD if needed to deploy the web app on the newly created/updated infra.

---

## 📌 Notes

- In production, consider using Managed Identity for ACR authentication instead of username/password. I had to use username/password because enabling system Managed Identity authentication at Web App creation is not possible, and enabling it afterward is more complicated than I'd like it to be.
- Future work may include: implementing microservices architecture, deploying to AKS for scalability and high availability, etc.

---
