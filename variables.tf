
variable host {

  default = "localhost"

  description = " (Required) The address for the postgresql server connection."

  type = string
}

variable port {

  default = "5432"

  description = "(Optional) The port for the postgresql server connection. The default is 5432."

  type = string
}

variable database {

  default = "postgres"

  description = "(Optional) Database to connect to. The default is postgres."

  type = string
}

variable username {

  default = "postgres"

  description = "(Required) Username for the server connection."

  type = string
}

variable password {

  default = "postgres"

  description = " (Optional) Password for the server connection."

  type = string
}