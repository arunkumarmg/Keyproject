resource "google_compute_instance" "default" {
    count = "${length(var.name_count)}"
    name = "instance-${count.index+1}"
    machine_type = "${var.machine_type ["dev"]}"
    zone = "${var.zone}"
    can_ip_forward = "false"
    description = "Debian virtual machine"

    tags = ["allow-http", "allow-https"] #FIREWALL

    
boot_disk {
   initialize_params {
    image = "${var.image}"
    size = "20"
   }
 }
network_interface {
    network = "default"
 }
service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
 }
 depends_on = [
   google_compute_instance.Second
 ]
}
 resource "google_compute_instance" "Second" {
    count = "${length(var.name_count)}"
    name = "instance-${count.index+1}"
    machine_type = "${var.machine_type ["qa"]}"
    zone = "${var.zone}"

    
boot_disk {
   initialize_params {
    image = "${var.image}"
   }
 }
network_interface {
    network = "default"
 }
service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
 }
} 