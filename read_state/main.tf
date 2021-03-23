# read_state/backend.tf
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "SoltysOrg"

    workspaces {
      name = "server-read-state"
    }
  }
}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}


