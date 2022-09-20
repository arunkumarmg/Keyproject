module "instance" {
 source = "../../Udemy/Compute instance"
}
module "kubernetes" {
  source = "../../Udemy/Kubernetes"
}
module "buckets" {
  source ="../../Udemy/Buckets"
}
module "database" {
  source ="../../Udemy/Databases"
}