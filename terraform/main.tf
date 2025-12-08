terraform {
  required_version = ">= 1.0.0" # Ensure that the Terraform version is 1.0.0 or higher

  required_providers {
  }
}

module "proxmox" {
  source = "./modules/proxmox"
}

module "reverse_proxy" {
  source = "./modules/reverse_proxy"
}
