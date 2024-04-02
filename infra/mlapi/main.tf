terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.4.1"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

data "local_file" "mycluster_ca_certificate" {
  filename = "/home/shamik/.minikube/ca.crt"
}

data "local_file" "mycluster_client_certificate" {
  filename = "/home/shamik/.minikube/profiles/minikube/client.crt"
}

data "local_file" "mycluster_client_key" {
  filename = "/home/shamik/.minikube/profiles/minikube/client.key"
}

resource "helm_release" "my_chart" {
  name       = "mycharts"
  repository = "https://shamik13.github.io/mlapi-charts"
  chart      = "mlapi"
  version    = "0.1.1"

  values = [
    "${file("values-dev.yaml")}"
  ]
}
