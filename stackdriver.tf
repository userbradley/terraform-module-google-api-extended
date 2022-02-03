resource "google_project_service" "stackdriver" {
  project = var.project_id
  service = "stackdriver.${var.api-endpoint}"
  count = var.stackdriver ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "stackdriver" {
type = bool
}