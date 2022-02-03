resource "google_project_service" "usercontext" {
  project = var.project_id
  service = "usercontext.${var.api-endpoint}"
  count = var.usercontext ? 1:0

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
  }

  disable_dependent_services = var.disable_dependent_services
}

variable "usercontext" {
type = bool
}