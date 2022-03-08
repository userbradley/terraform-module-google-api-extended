resource "google_project_service" "networkmanagement" {
  project = var.project_id
  service = "networkmanagement.${var.api-endpoint}"
  count = var.networkmanagement ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "networkmanagement" {
type = bool
}