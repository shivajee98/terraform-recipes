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
    token = "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"
}



resource "github_repository" "terraform-generated-repo" {
  name        = "terraform-generated-repo"
  description = "My awesome codebase"

  visibility = "public"

}