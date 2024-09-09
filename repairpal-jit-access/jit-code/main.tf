module "project-iam-bindings-sufiyan-sandbox" {
  source   = "../modules"
  projects = ["project_id"]
  mode     = "additive"

  conditional_bindings = [
    {
      role        = "roles/monitoring.admin"
      title       = "expires_after_2024_09_27"
      description = "Expiring at midnight of 2024-09-27"
      expression  = "request.time < timestamp(\"2024-09-27T00:00:00Z\")"
      members     = ["user:user@repairpal.com"]
    }
  ]
}