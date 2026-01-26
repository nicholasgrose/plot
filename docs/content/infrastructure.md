# Infrastructure

## Services

| Service      | Description                                  |
|--------------|----------------------------------------------|
| Cloudflare   | DNS                                          |
| DigitalOcean | Cloud infrastructure                         |
| TailScale    | VPN                                          |
| Proxmox      | Virtualization of on-premises infrastructure |

## Diagram

```mermaid
graph TD
    A[Cloudflare] --> B[DigitalOcean] --> C[TailScale] --> D[Proxmox]
```
