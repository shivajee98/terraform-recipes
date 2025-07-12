terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "your github pat"
}



resource "github_repository" "terraform-generated-repo" {
  name        = "terraform-generated-repo"
  description = "My awesome codebase"

  visibility = "public"

}