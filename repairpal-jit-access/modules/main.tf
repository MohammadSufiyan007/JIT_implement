module "project-iam-bindings" {
  source   = "terraform-google-modules/iam/google//modules/projects_iam"
  projects = var.projects
  bindings             = var.bindings
  conditional_bindings = var.conditional_bindings

}