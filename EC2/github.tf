terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.21.0"
    }
  }
}

provider "github" {
  token = ""
}
/*
resource "github_repository" "example" {
  name        = "example"
  visibility = "public"
}*/
