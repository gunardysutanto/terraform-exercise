variable "gcp-project" {
  type        = string
  description = "The name of project where you wish to provision GCP resource(s)"
}

variable "gcp-credential-file" {
  type        = string
  description = "The credential file of service account which used to provision GCP resource(s)"
}

variable "gcp-default-region" {
  type        = string
  description = "The default region where you wish to provision GCP resource(s)"
}

variable "gcp-default-zone" {
  type        = string
  description = "The default zone where you wish to provision GCP resource(s)"
}