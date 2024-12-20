# W pliku terraform.tf znajduje się konfiguracja wersji terraform oraz wersji dostawcy (provider) digitalocean.

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.44.1"
    }
  }

  cloud {
    organization = "test_github_actions"

    workspaces {
      name = "warsztaty-github-actions-terraform"
    }
  }

  required_version = ">= 1.9"
}
