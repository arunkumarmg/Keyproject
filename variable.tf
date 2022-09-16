variable "path" {
    default= "C:/terraform/credentials"
}
variable "name_count" {
   default = ["server1"]
}
variable "image" { 
    default = "debian-cloud/debian-11"
}
variable "machine_type" {
    type = map(string)
  default = {
    "dev" = "e2-micro"
    "qa" =  "n1-standard-1"
  }
}
variable "zone" {
  default = "us-central1-c"
}