data "terraform_remote_state" "write_state" {
  backend = "remote"

  config = {
    hostname = "app.terraform.io"
    organization = "SoltysOrg"

    workspaces = {
      name = "terraform_advanced_test"
    }
  }
}