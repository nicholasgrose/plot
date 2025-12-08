# Reverse Proxy Module

This module contains the definitions for the reverse proxy server.

It deploys a droplet to DigitalOcean, provisions it with a Tailscale connection, and points my Cloudflare DNS at it.
After deployment, Ansible is used to configure Caddy over the Tailnet.
