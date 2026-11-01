# DEV-PROD Deployment Using Terraform 🚀

## 📌 Project Overview

This project demonstrates the implementation of separate Development (DEV) and Production (PROD) environments on AWS using Terraform.

The objective is to provision and manage cloud infrastructure using Infrastructure as Code (IaC), maintain environment isolation, and implement a controlled deployment workflow.

Terraform modules are used to create reusable infrastructure configurations, while separate environment configurations maintain independent DEV and PROD resources.

The project follows DevOps best practices for infrastructure automation, environment management, and controlled production deployments.

## 🛠️ Technologies Used

- **AWS** – Cloud Infrastructure
- **Terraform** – Infrastructure as Code (IaC)
- **Amazon VPC** – Network Isolation
- **Amazon ECS** – Container Orchestration
- **Amazon ECR** – Container Image Registry
- **AWS IAM** – Identity and Access Management
- **Amazon S3** – Remote Terraform State Storage
- **Git & GitHub** – Version Control
- **GitHub Actions** – CI/CD Automation
- **Linux** – Command Line Administration

## 📂 Project Structure

```text
DEV-PROD-Deployment/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── modules/
│   └── app_infra/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── provider.tf
├── .gitignore
└── README.md
```

## ☁️ AWS Infrastructure

The project provisions separate AWS infrastructure for Development and Production environments.

### Development Environment (DEV)

- Dedicated AWS VPC
- Public Subnets
- Security Groups
- IAM Roles
- Amazon ECR Repository
- Amazon ECS Cluster

### Production Environment (PROD)

- Separate AWS VPC
- Public Subnets
- Security Groups
- IAM Roles
- Amazon ECR Repository
- Amazon ECS Cluster

## 🏗️ Infrastructure Architecture

```text
                 AWS CLOUD
                     |
          -----------------------
          |                     |
          v                     v
     DEV ENVIRONMENT       PROD ENVIRONMENT
          |                     |
      DEV VPC               PROD VPC
          |                     |
     Public Subnets        Public Subnets
          |                     |
     Security Groups       Security Groups
          |                     |
       IAM Roles             IAM Roles
          |                     |
       Amazon ECR            Amazon ECR
          |                     |
       Amazon ECS            Amazon ECS
          |                     |
     DEV Deployment       PROD Deployment
```

## ⚙️ Terraform Configuration

Terraform modules are used to maintain reusable infrastructure code.

Separate configurations are maintained for DEV and PROD environments to ensure independent infrastructure management.

### 1. Initialize Terraform

For DEV:

```bash
cd environments/dev
terraform init
```

For PROD:

```bash
cd environments/prod
terraform init
```

### 2. Validate Configuration

```bash
terraform validate
```

### 3. Review Infrastructure Changes

```bash
terraform plan
```

### 4. Deploy Infrastructure

For DEV:

```bash
terraform apply
```

For PROD:

```bash
terraform apply
```

Review the execution plan before approving infrastructure changes.

### 5. Verify Infrastructure

```bash
terraform state list
```

Verify the created AWS resources through the AWS Management Console.

### 6. Destroy Test Infrastructure

```bash
terraform destroy
```

**Note:** Run destroy only against test infrastructure when it is safe to remove.

## 🗄️ Terraform Remote State Management

Terraform state is stored remotely in Amazon S3.

**Benefits:**
- Centralized state management.
- Persistent infrastructure state.
- State encryption.
- Improved collaboration.
- State locking using S3 lockfiles.

The project uses separate state files for DEV and PROD environments.

## 🔄 DEV-PROD Deployment Workflow

The deployment process follows a controlled workflow:

```text
       Developer
           |
           v
      GitHub Push
           |
           v
     GitHub Actions
           |
           v
      Build & Test
           |
           v
     DEV Deployment
           |
           v
      DEV Testing
           |
           v
    Manual Approval
           |
           v
    PROD Deployment
           |
           v
   Production Verification
```

Production deployment is intended to happen only after successful DEV deployment, testing, and approval.

## 🎯 Key Learning Outcomes

- Understanding Infrastructure as Code using Terraform.
- Creating reusable Terraform modules.
- Managing separate DEV and PROD environments.
- Provisioning AWS infrastructure.
- Configuring VPCs, subnets, and security groups.
- Managing AWS IAM roles and permissions.
- Configuring remote Terraform state using S3.
- Implementing controlled deployment workflows.
- Understanding CI/CD and production deployment practices.

## 🔮 Future Improvements

- Integrate automated infrastructure testing.
- Implement Terraform security scanning.
- Add automated rollback mechanisms.
- Integrate monitoring using Amazon CloudWatch.
- Implement infrastructure deployment using GitHub Actions.
- Add Kubernetes and Amazon EKS integration.
- Improve production security using private subnets and restricted access.

## 👨‍💻 Author

**Shivam Ingale**

Aspiring DevOps Engineer | AWS Cloud Enthusiast

**Technical Skills:**
- AWS Cloud
- Terraform
- Docker
- GitHub Actions
- CI/CD
- Linux
- Git & GitHub
- Infrastructure as Code

📌 GitHub: https://github.com/shivamingale500-ui

---

⭐ If you find this project useful, feel free to explore the repository.

**Build Infrastructure | Automate Deployments | Learn DevOps 🚀**
