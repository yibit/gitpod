variable "project" {
  type        = string
  description = "Project ID of the project where resources should be created"
}

variable "region" {
  type        = string
  description = "GCP region where resource are to be created"
}

variable "cluster_name" {
  type        = string
  description = "The desired name of the created openshift cluster"
}

variable "zone_name" {
  type        = string
  description = "The name of the zone you configured for your domain"
}

variable "domain" {
  type        = string
  description = "Domain for your openshift cluster"
}

variable "openshift_pull_secret" {
  type        = string
  description = "Path to the pull secret that can be obtained at https://cloud.redhat.com/openshift/install/pull-secret"
}
