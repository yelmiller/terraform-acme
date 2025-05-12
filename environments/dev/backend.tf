terraform {
  backend "remote" {
    organization = "ACME-Infrastructure-demo"
    workspaces {
      name = "dev-web"
    }
  }
}
