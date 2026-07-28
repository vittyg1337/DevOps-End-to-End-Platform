# Architecture

## Delivery flow

```mermaid
flowchart LR
    D[Developer] --> G[GitHub repository]
    G --> CI[GitHub Actions]
    CI --> T1[Terraform validation]
    CI --> B[Container build]
    B --> S[Smoke and security checks]
    T[Terraform] --> EC2[AWS EC2]
    B --> K[Kubernetes Deployment]
    K --> APP[Non-root Nginx service]
    APP --> H[/health endpoint]
    P[Prometheus] --> K
    GR[Grafana] --> P
    A[Ansible] --> EC2
```

## Implemented components

| Component | Responsibility | Verification |
| --- | --- | --- |
| Docker | Packages the static service in unprivileged Nginx | Compose smoke test |
| GitHub Actions | Validates Terraform and tests the container | Workflow status |
| Terraform | Provisions an Ubuntu EC2 instance and Security Group | `fmt`, `validate`, `plan` |
| Kubernetes | Runs two replicas with probes, limits, and a restricted security context | `kubectl rollout status` |
| Prometheus/Grafana | Provides the Kubernetes monitoring stack through Helm | Pod and dashboard checks |
| Ansible | Installs Docker and manages an Nginx container | Idempotent playbook run |

## Security boundaries

- AWS credentials, private keys, Terraform state, and local inventory are
  excluded from Git.
- SSH access requires an explicitly supplied trusted CIDR.
- The application container runs as a non-root user on port 8080.
- Compose and Kubernetes drop Linux capabilities and prevent privilege
  escalation.
- The Kubernetes container filesystem is read-only.

## Current scope

The repository demonstrates a portfolio lab, not a production service. AWS,
Kubernetes, monitoring, and Ansible are separate reproducible learning paths;
they are not presented as one continuously running production environment.
