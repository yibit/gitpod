module "openshift" {
  source         = "git::https://github.com/JesterOrNot/terraform-openshift4-gcp.git"
  gcp_project_id = var.project
  gcp_region     = var.region
  cluster_name   = var.cluster_name

  gcp_public_dns_zone_name = var.zone_name
  base_domain              = var.domain

  gcp_service_account = "${path.root}/account.json"

  openshift_pull_secret = var.openshift_pull_secret
}
