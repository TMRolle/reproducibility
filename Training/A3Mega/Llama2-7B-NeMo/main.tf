module "a3-mega-gke" {
  source = "github.com/GoogleCloudPlatform/ai-infra-cluster-provisioning//a3-mega/terraform/modules/cluster/gke"

  node_pools      = [{
    zone = var.zone
    node_count = var.node_count
    machine_type = "a3-megagpu-8g"
  }]
  project_id      = var.project_id
  resource_prefix = var.resource_prefix
  region          = var.region
}
