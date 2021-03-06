
# PostgreSQL: postgresql_database - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/postgresql/r/postgresql_database.html
resource "postgresql_database" "example" {
  name              = "example"
  owner             = postgresql_role.example.name 
  # template          = "template0"
  lc_collate        = "C"
  connection_limit  = -1
  allow_connections = true
}