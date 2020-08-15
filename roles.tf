

# PostgreSQL: postgresql_role - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/postgresql/r/postgresql_role.html
resource "postgresql_role" "example" {
  name     = "example"
  login    = true
  password = "example"
}