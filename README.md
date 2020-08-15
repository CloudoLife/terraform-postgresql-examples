# Terraform PostgreSQL Database Examples

Examples about using Terraform PostgreSQL Provider to manage databases and roles(users).

Github: [https://github.com/CloudoLife/terraform-postgresql-examples](https://github.com/CloudoLife/terraform-postgresql-examples)

## Prerequsites
Your must have a PostgreSQL database admin account and password, and Terraform CLI have been installed.

### PostgreSQL Database Admin Account and Password

Account and password may be postgres/postgres by default.

### Terrraform and Terrafrom PostgreSQL Provider

- [Terraform by HashiCorp](https://www.terraform.io/)

    Use Infrastructure as Code to provision and manage any cloud, infrastructure, or service

- [Provider: PostgreSQL - Terraform by HashiCorp](https://www.terraform.io/docs/providers/postgresql/index.html)

    The PostgreSQL provider gives the ability to deploy and configure resources in a PostgreSQL server.

## Configuration

### PostgreSQL Provider Variables
First, Specify values for PostgreSQL Provider variables within [terraform.tfvars](./terraform.tfvars).

```terraform
host = "localhost"

port = "5432"

database = "postgres"

username = "postgres"

password = "postgres"
```

### Role(User)
Config PostgreSQL roles(users) within [./roles](./roles)

```terraform
# PostgreSQL: postgresql_role - Terraform by HashiCorp
# https://www.terraform.io/docs/providers/postgresql/r/postgresql_role.html
resource "postgresql_role" "example" {
  name     = "example"
  login    = true
  password = "example"
```

### Database
Config PostgreSQL databases within [./databases](./databases)

```terraform
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
```

## Run

### Terraform Init

```bash
terraform init
```

It will download the Terraform PostgreSQL Provider binary.

### Terraform apply
```bash
terraform apply
```

It will dispaly the execute plan and wait for your make yes or no.
Then yes to create PostgreSQL roles(users) and databases.

# Reference
[1] [Provider: PostgreSQL - Terraform by HashiCorp - https://www.terraform.io/docs/providers/postgresql/index.htm](https://www.terraform.io/docs/providers/postgresql/index.htm)

[2] [terraform-providers/terraform-provider-postgresql: Terraform PostgreSQL provider - https://github.com/terraform-providers/terraform-provider-postgresql](https://github.com/terraform-providers/terraform-provider-postgresql)