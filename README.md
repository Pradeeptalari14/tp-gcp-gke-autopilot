# ☸️ GCP GKE Autopilot Cluster Studio
> Provision fully managed Kubernetes setups in GCP GKE Autopilot. Generate terraform manifests, workload identity pools, and target regional load balancer rules.

[![Studio](https://img.shields.io/badge/Developer_Studio-Live-brightgreen)](https://pradeeptalari14.github.io/portfolio/tools/gcp-gke-autopilot/)
[![Category](https://img.shields.io/badge/Category-cloud-blue)]()

---

## 🎛️ How This Studio Works

Provision fully managed Kubernetes setups in GCP GKE Autopilot. Generate terraform manifests, workload identity pools, and target regional load balancer rules.

Open the **[Interactive Studio](${studioUrl})** to configure options and generate files.
Each option combination produces different output — try different settings to learn by example.

## 🏗️ Architecture Flow Diagram

![SRE Architecture Flow](docs/sre_architecture_flow.png)

## 🚀 Step-by-Step Onboarding & Validation Guide

Follow these SRE steps to deploy, validate, and monitor this repository's workspace configs in a local or production environment:

#### 1. Prerequisites
- [x] **Terraform 1.5+**
- [x] **Kubectl & Helm 3.0+**
- [x] **AWS CLI / Google Cloud SDK configured**

#### 2. Download
Clone this repository locally:
```bash
git clone https://github.com/Pradeeptalari14/tp-gcp-gke-autopilot.git
cd tp-gcp-gke-autopilot
```

#### 3. Install
Fetch required packages and compile environment binaries:
```bash
terraform init || helm repo add stable https://charts.helm.sh/stable
```

#### 4. Enable Automatic Sidecar Injection
Enforce AWS Secret Manager sidecars or HashiCorp Vault Agent sidecars to inject dynamic credentials into resources.

#### 5. Install Kubernetes Gateway API CRDs
Deploy Kubernetes Gateway API custom resource definitions (CRDs) for cross-service route rules:
```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/v1.1.0/config/crd/standard/gateway-api-v1.1.0-experimental.yaml
```

#### 6. Deploy Application Workload
Apply Terraform templates or apply Kubernetes deployment manifests:
```bash
terraform plan -out=tfplan
terraform apply tfplan
# Or apply manifests
kubectl apply -f deploy/
```

#### 7. Validate Application Inside Cluster
Inspect resources state and check running pods inside the cluster:
```bash
terraform show && kubectl get all -n production
```

#### 8. Expose Application Using Gateway
Expose target load balancer ingress gateways or forward local ports:
```bash
kubectl port-forward deployment/tp-gcp-gke-autopilot 8080:8080
```

#### 9. Access the Application
Access service endpoints (printed in `terraform output`) or cluster local address [http://localhost:8080](http://localhost:8080).

#### 10. Install Addons
Install Karpenter autoscalers, AWS Load Balancer controllers, and ExternalDNS sync modules.

#### 11. Access Dashboard
Access EKS cloud dashboard, resource cost trackers, or local Kubernetes web consoles.

#### 12. View Service Mesh Graph
View resource dependencies diagram using `terraform graph` or inspect services topology structures.

#### 13. Generate Traffic
Inject test traffic loops to evaluate auto-scaling triggers:
```bash
kubectl run load-generator --image=busybox --restart=Never -- /bin/sh -c "while true; do wget -q -O- http://tp-gcp-gke-autopilot; done"
```

#### 14. Project Structure
```text
tp-tp-gcp-gke-autopilot/
├── .gitignore                # Version control exclusions
├── LICENSE                   # MIT Open Source License
├── SECURITY.md               # Vulnerability reporting protocols
├── CHANGELOG.md              # Releases version history
├── README.md                 # Project learning guide & onboarding
├── .env.example              # Template parameters config
├── .pre-commit-config.yaml   # Gitleaks & lint pipeline hooks
├── docs/
│   ├── USAGE.md              # Extended developer usage docs
│   ├── TROUBLESHOOTING.md    # Failures resolution guide
│   ├── GLOSSARY.md           # SRE domain terminology index
│   ├── COMPLIANCE.md         # Legal and security checks checklist
│   └── sre_architecture_flow.png # Category SRE architecture diagram
├── scripts/
│   └── validate.sh           # Local validation helper script
└── .github/
    ├── CONTRIBUTING.md       # Contributing instructions
    ├── PULL_REQUEST_TEMPLATE.md # Pull request code compliance check
    ├── ISSUE_TEMPLATE/       # Bug and features tickets
    ├── dependabot.yml        # Auto updates dependencies
    └── workflows/
        └── security-scan.yml # Gitleaks/yamllint/shellcheck scans

# Primary Config File: gke_autopilot.tf
```

#### 15. Observability Components
Tracks cloud resource consumption metrics: node auto-scaling stats, CPU/Memory limit pools, and network requests.

#### 16. Install Monitoring
Triggers cloud alerts on cost budget breaches, node terminations, or replication failures.

## 🔐 Security

- ❌ Never commit real credentials
- ✅ Use environment variables or secret managers
- ✅ Enable branch protection on `main`

## 📖 Resources

| Resource | Link |
|----------|------|
| Interactive Studio | [Open →](https://pradeeptalari14.github.io/portfolio/tools/gcp-gke-autopilot/) |
| All 91 Studios | [Dashboard →](https://pradeeptalari14.github.io/portfolio/tools/) |

*Part of [Talari Pradeep Developer Studio Portfolio](https://pradeeptalari14.github.io/portfolio)*