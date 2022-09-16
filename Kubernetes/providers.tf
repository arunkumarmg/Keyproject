provider "google" {
    project = "keyproject-362417"
    region = "us-central"
    credentials = "${file("${var.path}/secret.json")}"
}
provider "google-beta" {
    project = "keyproject-362417"
    region = "us-central"
    credentials = "${file("${var.path}/secret.json")}"
}
data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}