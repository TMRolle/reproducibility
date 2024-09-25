resource "google_project_service" "gke_service" {
  project = var.project_id
  service = "container.googleapis.com"
  disable_on_destroy = false
}

# Does not support depends_on, fix upstream or change to in-tree module
module "a3-mega-gke" {
  source = "../../../Infrastructure/a3-mega/terraform/modules/cluster/gke"

  zone = var.zone
  specific_reservation=var.reservation
  gpu_node_count = var.node_count
  project_id      = var.project_id
  resource_prefix = "benchmark"
  region          = var.region
  disk_size_gb = 100
  disk_type = "pd-balanced"
  enable_gke_dashboard = var.enable_gke_dashboard
}
