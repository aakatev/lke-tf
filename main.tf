terraform {
  required_version = ">=0.12.25"
}

variable "token" {
  description = "Your Linode API Personal Access Token (required)"
}

variable "k8s_version" {
  description = "The Kubernetes version to use for this cluster (required)"
  default     = "1.16"
}

variable "label" {
  description = "The unique label to assign to this cluster (required)"
  default     = "lke-cluster"
}

variable "region" {
  description = "The region where your cluster will be located (required)"
  default     = "us-west"
}

variable "pools" {
  description = "The Node Pool specifications for the Kubernetes cluster (required)"
  type = list(object({
    type  = string
    count = number
  }))
  default = []
}

variable "tags" {
  description = "Tags to apply to your cluster for organizational purposes (optional)"
  type        = list(string)
  default     = ["terraform"]
}

provider "linode" {
  token = var.token
}

resource "linode_lke_cluster" "cluster" {
  k8s_version = var.k8s_version
  label       = var.label
  region      = var.region
  tags        = var.tags

  dynamic "pool" {
    for_each = var.pools
    content {
      type  = pool.value["type"]
      count = pool.value["count"]
    }
  }
}

output "kubeconfig" {
  value = linode_lke_cluster.cluster.kubeconfig
}

output "api_endpoints" {
  value = linode_lke_cluster.cluster.api_endpoints
}

output "status" {
  value = linode_lke_cluster.cluster.status
}

output "id" {
  value = linode_lke_cluster.cluster.id
}

output "pool" {
  value = linode_lke_cluster.cluster.pool
}
    