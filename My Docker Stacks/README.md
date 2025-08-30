# 🏠 Home Lab Ansible Deployment

This repository contains an Ansible setup to automatically deploy all Docker Compose stacks from the [`funmicra/Home-Lab`](https://github.com/funmicra/Home-Lab) GitHub repository to my ProxMox VM server on 192.168.88.10.

## 📦 What It Does / How It Runs

This playbook will:

1. **Install Docker Engine** and the `docker-compose` plugin (Compose v2).
2. **Clone the `Home-Lab` repo** from GitHub.
3. **Recursively search** the `My Docker Stacks/` subdirectory for any `docker-compose*.yaml` files.
4. **Run `docker compose up`** for each valid compose project folder found.

Each folder inside `My Docker Stacks/` must contain its own `docker-compose.yaml` (or `.yml`) file.

**Since file site.yml is the entry-point playbook, the basic command is:**
```bash
ansible-playbook -i hosts.ini site.yml -v --diff --ask-become-pass
```
💡 flags:
- -i hosts.ini → points to your inventory.
- --ask-become-pass → prompts for sudo password if needed.
- -v → verbose output
- -C → check mode (dry-run)
- --diff → shows what would change

🖥️ hosts.ini
```ini
[homelab]
# Replace with your host IP or hostname
192.168.88.10

[homelab:vars]
ansible_user=your_ssh_user         # SSH username
ansible_port=22                     # SSH port (default 22)
ansible_ssh_private_key_file=/path/to/private_key  # Path to your SSH key
ansible_become=true                 # Enable privilege escalation (sudo)
ansible_become_method=sudo
ansible_become_password=YOUR_SUDO_PASSWORD       # Optional, if sudo needs a password
ansible_python_interpreter=/usr/bin/python3      # Ensure Python 3 is used
```
---
**🧩 Project Folders/Files Structure**
```bash

├── group_vars/               # Variables per host group
│   └── homelab.yml
├── host_vars/                # Variables per host
│   └── homelab1.yml
├── roles/
│   ├── monitoring/           # Future role for Prometheus/Grafana etc.
│   ├── backups/              # Backup automation
│   └── security/             # Optional security hardening role
├── logs/                     # Capture ansible run logs
├── scripts/                  # Helper scripts (cleanup, restart stacks)
```
