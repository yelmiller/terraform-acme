terraform {
  backend "remote" {
    organization = "acme"
    workspaces {
      name = "dev-web"
    }
  }
}
