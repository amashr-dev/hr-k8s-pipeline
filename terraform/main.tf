# main.tf
provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "infra" {
  metadata { name = "infra" }
}
resource "kubernetes_namespace" "microservices" {
  metadata { name = "microservices" }
}
resource "kubernetes_namespace" "frontend" {
  metadata { name = "frontend" }
}
resource "kubernetes_namespace" "argocd" {
  metadata { name = "argocd" }
}
