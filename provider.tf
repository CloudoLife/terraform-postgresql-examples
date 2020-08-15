
# Provider: PostgreSQL - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/postgresql/index.html
provider "postgresql" {
  host            = var.host
  port            = var.port
  database        = var.database
  username        = var.username
  password        = var.password
  sslmode         = "disable" 
#   connect_timeout = var.connect_timeout
}