# AmasHR Kubernetes Stack

This repo contains the full Kubernetes deployment for AmasHR — a microservices-based HR system using Helm, Traefik, Vault, Redis, Pulsar, and PostgreSQL with Liquibase support.

---

## Folder Structure

```plaintext
k8s/
├── charts/
│   ├── infra/                   # Infrastructure layer
│   │   ├── redis/               # Bitnami Helm chart
│   │   ├── postgresql/          # With Liquibase Helm hook
│   │   ├── vault/               # HashiCorp official chart
│   │   ├── pulsar/              # Apache Pulsar chart
│   │   ├── pulsar-manager/      # Custom Helm chart
│   │   └── monitoring/          # Prometheus + Grafana
│
│   ├── microservices/
│   │   ├── event-processor/
│   │   ├── auth/
│   │   ├── notifications/
│   │   ├── leave/
│   │   └── employee/
│
│   ├── frontend/
│   │   ├── hr-web/
│   │   ├── hr-mobile/
│   │   └── api-gateway/         # Traefik (Ingress controller)
│
├── manifests/
│   ├── namespaces.yaml
│   ├── ingress-traefik.yaml
│   ├── secrets.yaml
│   └── configmaps/
│       └── global-values.yaml
│
├── argo/
│   ├── root-app.yaml            # App of Apps
│   ├── apps/
│   │   ├── infra.yaml
│   │   ├── microservices.yaml
│   │   └── frontend.yaml
│
├── terraform/                   # Cluster and namespaces
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── k8s-namespaces.tf
│
├── scripts/
│   ├── liquibase-migrate.sh
│   ├── port-forward.sh
│   └── dev-setup.sh
│
└── README.md                    # This file
