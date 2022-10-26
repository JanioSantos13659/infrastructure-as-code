terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "INFRAESTRUTURA-TCC"

    workspaces {
      name = "Projeto_3"
    }
  }
}