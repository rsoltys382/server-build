variable subnet_id {}
variable vpc_security_group_ids {
  type = list
}
variable identity {}
variable key_name {}

variable server_os {
    type = string
    description = "Server Operating System"
    default = "windows"
}

variable "region" {
  default = "us-east-1"
}

variable "num_web" {
  type = number
}

variable  access_key {
  type = string
  sensitive=true
}

variable secret_key {
  type = string
  sensitive = true
}

