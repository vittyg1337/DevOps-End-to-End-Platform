# DevOps End-to-End Platform

![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![Docker](https://img.shields.io/badge/Docker-Containers-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-orange)
![Grafana](https://img.shields.io/badge/Grafana-Dashboards-orange)
![Ansible](https://img.shields.io/badge/Ansible-Automation-red)

## Overview

This portfolio repository consolidates hands-on labs for application
containerization, CI validation, AWS infrastructure provisioning, Kubernetes
deployment, monitoring, and configuration management.

The local application path is reproducible from a clean clone and is tested with
Docker Compose. The AWS, Kubernetes, monitoring, and Ansible sections are
separate learning environments with source-controlled configurations and
implementation evidence; they are not represented as one continuously running
production platform.

---

## Business Problem

Modern applications require repeatable builds, controlled infrastructure,
health verification, monitoring, and clear operating documentation.

This project demonstrates how a DevOps engineer can:

* Provision infrastructure
* Deploy applications
* Automate workflows
* Monitor systems
* Visualize metrics
* Automate server configuration

using modern cloud-native technologies.

---

## Quick Start

Requirements: Docker Desktop with Docker Compose and PowerShell 7.

```powershell
git clone https://github.com/vittyg1337/devops-cloud-platform-aws-kubernetes-terraform.git
cd devops-cloud-platform-aws-kubernetes-terraform
pwsh ./tests/smoke.ps1
```

The test builds the image, waits for the service to become healthy, verifies the
home page and `/health` response, confirms the container is not running as root,
and removes the test environment.

---

## Architecture

See [docs/architecture.md](docs/architecture.md) for the readable Mermaid
diagram, component responsibilities, verification methods, and security
boundaries.

---

## Technology Stack

### Cloud & Infrastructure

* AWS EC2
* Terraform
* Linux

### Containers & Orchestration

* Docker
* Kubernetes

### CI/CD

* Git
* GitHub
* GitHub Actions

### Monitoring & Observability

* Prometheus
* Grafana

### Automation

* Ansible

---

## Project Outcomes

* Provisioned AWS cloud infrastructure using Terraform
* Built a GitHub Actions workflow for Terraform validation and container smoke testing
* Containerized an Nginx service with a non-root runtime and health endpoint
* Added repeatable Docker Compose startup and teardown
* Added Kubernetes manifests with probes, resource controls, and a restricted security context
* Documented Prometheus and Grafana installation through Helm
* Added idempotent Ansible automation for Docker and Nginx
* Documented over 70 implementation screenshots
* Recorded troubleshooting evidence alongside source-controlled configuration

---

## Project Components

### Consolidated Implementation Source

The implementation files are consolidated in this repository so the lab evidence
is backed by reproducible, source-controlled configuration.

**Key files:**

* `app/docker-webapp/Dockerfile`
* `app/docker-webapp/index.html`
* `compose.yaml`
* `tests/smoke.ps1`
* `.github/workflows/docker-webapp.yml`
* `terraform/`
* `kubernetes/`
* `monitoring/`
* `ansible/`
* `docs/docker-webapp-project-summary.md`

**Skills:**

* Dockerfile authoring
* Static web app containerization
* GitHub Actions Docker and Terraform validation
* Infrastructure and configuration automation

---

### Linux Administration Lab

Built and managed Linux servers using SSH, package management, permissions, processes, and services.

**Skills:**

* Linux Administration
* SSH
* System Management
* Troubleshooting

---

### Docker Web Application

Built a non-root Nginx container with a JSON health endpoint. Docker Compose
runs it with a read-only filesystem, no new privileges, and all Linux
capabilities dropped.

**Skills:**

* Docker
* Dockerfiles
* Containers
* Networking

---

### AWS Deployment

Provisioned and managed public-facing EC2 infrastructure and deployed containerized applications.

**Skills:**

* AWS EC2
* Security Groups
* Cloud Networking
* Linux Servers

---

### Terraform Infrastructure

Created Infrastructure as Code that provisions an Ubuntu EC2 instance and
security group. The consolidated configuration restricts SSH by input CIDR,
enforces IMDSv2, encrypts the root volume, and discovers a current Ubuntu AMI.

**Source:** [`terraform/`](terraform/)

**Skills:**

* Terraform
* Infrastructure as Code
* State Management
* Cloud Automation

---

### GitHub Actions CI/CD

Implemented automated checks for Terraform formatting and validation, container
startup, application responses, and non-root execution.

**Skills:**

* GitHub Actions
* CI/CD
* YAML
* Automation

---

### Kubernetes Homelab

Deployed and managed applications using Deployments, Pods, and Services. The
source-controlled Minikube manifests include two replicas, health probes,
resource limits, and NodePort exposure.

**Source:** [`kubernetes/`](kubernetes/)

**Skills:**

* Kubernetes
* Deployments
* Pods
* Services
* kubectl

---

### Monitoring Stack

Installed and configured Prometheus and Grafana for metrics collection and
visualization with a reproducible Helm values file and operating instructions.

**Source:** [`monitoring/`](monitoring/)

**Skills:**

* Prometheus
* Grafana
* Monitoring
* Observability
* Dashboards

---

### Ansible Automation

Automated Docker installation, service management, and Nginx container
deployment with an idempotent Ansible playbook and example inventory.

**Source:** [`ansible/`](ansible/)

**Skills:**

* Ansible
* Playbooks
* Configuration Management
* Server Automation

---

## Skills Demonstrated

* Linux Administration
* Infrastructure as Code
* Cloud Infrastructure
* CI/CD
* Containerization
* Kubernetes Administration
* Monitoring & Observability
* Configuration Management
* Automation
* Troubleshooting
* Documentation
* Cloud Operations

---

## Project Gallery

The screenshot evidence is organized as an ordered lab sequence. The folder names follow the same progression as the implementation screenshots, so reviewers can scan the project from fundamentals through the final end-to-end result.

| Lab | Screenshot range | Evidence |
| --- | --- | --- |
| 01 - Linux and Git Foundations | 01-06 | [Screenshots/01-linux-git-foundations](Screenshots/01-linux-git-foundations) |
| 02 - Docker Web App Containerization | 07-17 | [Screenshots/02-docker-webapp-containerization](Screenshots/02-docker-webapp-containerization) |
| 03 - AWS EC2 Cloud Deployment | 19-26 | [Screenshots/03-aws-ec2-cloud-deployment](Screenshots/03-aws-ec2-cloud-deployment) |
| 04 - Terraform Infrastructure as Code | 27-49 | [Screenshots/04-terraform-infrastructure-as-code](Screenshots/04-terraform-infrastructure-as-code) |
| 05 - GitHub Actions CI/CD | 36-39 | [Screenshots/05-github-actions-ci-cd](Screenshots/05-github-actions-ci-cd) |
| 06 - Project Evidence Library | 50 | [Screenshots/06-project-evidence-library](Screenshots/06-project-evidence-library) |
| 07 - AWS Terraform EC2 Verification | 51 | [Screenshots/07-aws-terraform-ec2-verification](Screenshots/07-aws-terraform-ec2-verification) |
| 08 - Kubernetes Minikube Orchestration | 52-64 | [Screenshots/08-kubernetes-minikube-orchestration](Screenshots/08-kubernetes-minikube-orchestration) |
| 09 - Prometheus and Grafana Monitoring | 65-71 | [Screenshots/09-prometheus-grafana-monitoring](Screenshots/09-prometheus-grafana-monitoring) |
| 10 - Ansible Configuration Management | 72-74 | [Screenshots/10-ansible-configuration-management](Screenshots/10-ansible-configuration-management) |
| 11 - End-to-End Project Overview | 75 | [Screenshots/11-end-to-end-project-overview](Screenshots/11-end-to-end-project-overview) |

---

## Documentation

This repository contains over 70 implementation screenshots demonstrating:

* Infrastructure provisioning
* Docker deployments
* AWS deployments
* Terraform workflows
* CI/CD pipelines
* Kubernetes deployments
* Monitoring implementation
* Ansible automation
* Troubleshooting and issue resolution

### Screenshot Evidence Index

| Ordered lab | Evidence |
| --- | --- |
| 01 - Linux and Git Foundations | [Screenshots/01-linux-git-foundations](Screenshots/01-linux-git-foundations) |
| 02 - Docker Web App Containerization | [Screenshots/02-docker-webapp-containerization](Screenshots/02-docker-webapp-containerization) |
| 03 - AWS EC2 Cloud Deployment | [Screenshots/03-aws-ec2-cloud-deployment](Screenshots/03-aws-ec2-cloud-deployment) |
| 04 - Terraform Infrastructure as Code | [Screenshots/04-terraform-infrastructure-as-code](Screenshots/04-terraform-infrastructure-as-code) |
| 05 - GitHub Actions CI/CD | [Screenshots/05-github-actions-ci-cd](Screenshots/05-github-actions-ci-cd) |
| 06 - Project Evidence Library | [Screenshots/06-project-evidence-library](Screenshots/06-project-evidence-library) |
| 07 - AWS Terraform EC2 Verification | [Screenshots/07-aws-terraform-ec2-verification](Screenshots/07-aws-terraform-ec2-verification) |
| 08 - Kubernetes Minikube Orchestration | [Screenshots/08-kubernetes-minikube-orchestration](Screenshots/08-kubernetes-minikube-orchestration) |
| 09 - Prometheus and Grafana Monitoring | [Screenshots/09-prometheus-grafana-monitoring](Screenshots/09-prometheus-grafana-monitoring) |
| 10 - Ansible Configuration Management | [Screenshots/10-ansible-configuration-management](Screenshots/10-ansible-configuration-management) |
| 11 - End-to-End Project Overview | [Screenshots/11-end-to-end-project-overview](Screenshots/11-end-to-end-project-overview) |

---

## Supporting Labs

Additional learning artifacts from earlier DevOps practice repositories were merged into [labs/](labs/). These files show the foundation behind the flagship project, including Linux notes, Git notes, SSH setup, and early lab documentation.

---

## Key DevOps Concepts Demonstrated

* Infrastructure as Code (IaC)
* Continuous Integration (CI)
* Continuous Delivery (CD)
* Containerization
* Cloud Computing
* Kubernetes Orchestration
* Monitoring & Observability
* Configuration Management
* Automation
* DevOps Best Practices

---

## Future Improvements

* Multi-environment deployments
* Automated Kubernetes deployments
* Advanced monitoring dashboards
* Infrastructure scaling
* Additional cloud services
* Publish versioned application images to a container registry
* Add automated linting for Kubernetes and Ansible configuration

---

## Author

**Vitorino Gomes**

Computer Programming Student
Aspiring DevOps Engineer

Technologies:
AWS | Terraform | Docker | Kubernetes | GitHub Actions | Prometheus | Grafana | Ansible
