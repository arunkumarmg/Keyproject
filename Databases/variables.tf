variable "path" {
    default= "C:/terraform/credentials"
}
variable "tier" {
  default="db-g1-small"
}
variable "name" {
  default="postgressql-dev"
}
variable "db_region" {
  default="us-central1"
}
variable "disk_size" {
  default="20"
}
variable "database_version" {
  default="POSTGRES_9_6"
}
variable "user_host" {
  default="%"
}
variable "user_name" {
  default="admin"
}
variable "user_passwd" {
  default="1234576"
}
/* variable "replication_type" {
  default="SYNCHRONOUS"
} */
variable "activation_policy" {
  default="always"
}