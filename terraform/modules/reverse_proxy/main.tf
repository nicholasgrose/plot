terraform {
  required_version = ">= 1.0.0" # Ensure that the Terraform version is 1.0.0 or higher

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.5.0"
    }

    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.55.0"
    }

    tailscale = {
      source  = "tailscale/tailscale"
      version = "0.20.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.7"
    }

    ansible = {
      source  = "ansible/ansible"
      version = "1.3.0"
    }
  }
}
