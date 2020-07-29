provider google {
  version     = "3.5.0"
  credentials = file(var.gcp-credential-file)
  project     = var.gcp-project
  region      = var.gcp-default-region
  zone        = var.gcp-default-region
}