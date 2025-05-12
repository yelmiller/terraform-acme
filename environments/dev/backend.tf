terraform {
  backend "remote" {
    organization = "ACME-Infrastructure-Demo"
    workspaces {
      name = "dev-web"
    }
  }
}
