variable "pr_id" {
  default = "keyproject-362417"
}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  type   = list(string)
  default = ["us-central1-a","us-central1-b", "us-central1-c"]
}
variable "path" {
    default= "C:/terraform/credentials"
}