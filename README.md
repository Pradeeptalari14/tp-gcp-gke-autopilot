# GCP GKE Autopilot Cluster Studio

This repository contains the target configuration and SRE runtime files compiled by the **GCP GKE Autopilot Cluster Studio** dashboard module.

## 🚀 Description
Provision fully managed Kubernetes setups in GCP GKE Autopilot. Generate terraform manifests, workload identity pools, and target regional load balancer rules.

## 🛠️ Specification Matrix
- **Primary Configuration File**: `/infra/gke/gke_autopilot.tf`
- **Execution Command**: `terraform init && terraform apply -auto-approve`
- **Validation Command**: `terraform show`

## 📋 How to Run & Validate

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Pradeeptalari14/tp-gcp-gke-autopilot.git
   cd tp-gcp-gke-autopilot
   ```

2. **Run Execution Target:**
   ```bash
   terraform init && terraform apply -auto-approve
   ```

3. **Verify Runtime Stability:**
   ```bash
   terraform show
   ```

## 🔐 Security & Best Practices
* **Secret Isolation**: Use organization-level secrets (or SSM parameter hooks) rather than hardcoded environment variables inside files.
* **Pull Request Lifecycles**: Protect default branch merges with validation checks before merging code changes.
