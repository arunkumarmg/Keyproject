resource "google_compute_firewall" "allow-http" {
   name = "allow-http"
   network = "default"

   allow {
     protocol = "tcp"
     ports = ["80"]
   }

   source_tags = ["allow-http"]
}
resource "google_compute_firewall" "allow-https" {
   name = "allow-https"
   network = "default"

   allow {
     protocol = "tcp"
     ports = ["443"]
   }

   source_tags = ["allow-https"]
}