variable "project_id" {
  description = "The project to deploy the GKE cluster in."
  type = string
  nullable = false
}

variable "reservation" {
  description = "Reservation to utilize, i.e. projects/12345/reservations/my-reservation"
  type = string
  nullable = false
}

variable "region" {
  description = "The region to deploy the GKE cluster in."
  type = string
  default = "us-east5"
  nullable = false
}

variable "zone" {
  description = "The zone to deploy the GPU node pool in."
  type = string
  default = "us-east5-a"
  nullable = false
}

variable "node_count" {
  description = "Number of a3-megagpu-8g nodes to deploy."
  type = number
  default = 4
  nullable = false
}

variable "enable_gke_dashboard" {
description = "Create GKE dashboard to visualize cluster performance metrics."
type = bool
default = true
}
