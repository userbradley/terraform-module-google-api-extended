resource "google_project_service" "safebrowsingjson" {
  project = var.project_id
  service = "safebrowsing-json.${var.api-endpoint}"
  count = var.safebrowsingjson ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "safebrowsingjson" {
type = bool
}