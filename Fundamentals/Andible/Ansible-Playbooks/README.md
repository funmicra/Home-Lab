# Ansible Playbooks Repository

This repository contains a set of **Ansible playbooks** for managing servers, workstations, and network devices. These playbooks cover package management, system updates, SSH configuration, user management, and system statistics reporting.  

---

## Table of Contents

- [Requirements](#requirements)  
- [Inventory](#inventory)  
- [Playbooks](#playbooks)  
- [Usage](#usage)  
- [Vault and Secrets](#vault-and-secrets)  
- [Logging](#logging)  
- [Contributing](#contributing)  

---

## Requirements

- Ansible >= 2.14  
- Python >= 3.8 (for modules that require Python)  
- SSH access to managed hosts  
- Optional: `ansible-vault` for encrypted variables  

---

## Inventory

The `hosts.ini` file contains the inventory of managed hosts. You can define groups such as:

```ini
[linux_servers]
server1
server2

[windows_servers]
win01
win02

[network_devices]
mikrotik1
