terraform {
  backend "remote" {
    organization = "SoltysOrg"

    workspaces {
      name = "terraform_advanced_test"
    }
  }
}