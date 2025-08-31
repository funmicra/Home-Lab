# Ansible Playbooks Repository

This repository contains a collection of **Ansible playbooks** for automating common system administration tasks, server configuration, and package management.

## 📂 Repository Structure

```
Ansible-Playbooks/
├── Configure_SSH.yaml         # Configure secure SSH settings
├── MikroTik_Update.yaml       # Automate MikroTik RouterOS updates
├── apt_install.yaml           # Install packages via apt
├── apt_update.yaml            # Update apt package cache
├── copy_ssh_keys.yaml         # Copy SSH keys to remote servers
├── create_ansible_users.yaml  # Create Ansible-specific users
├── flatpak_update.yaml        # Update Flatpak applications
├── lock_root.yaml             # Lock the root account for security
├── snap_update.yaml           # Update Snap packages
├── windows_servers.yaml       # Manage Windows servers
└── .gitignore                 # Git ignore file
```

## 🚀 Getting Started

### Prerequisites
- **Ansible** installed (version 2.9+ recommended)
- Python 3.x
- SSH access to target hosts

### Inventory
Define your hosts in `inventory.ini` (or another inventory file):

```ini
[servers]
server1 ansible_host=192.168.1.10 ansible_user=admin
server2 ansible_host=192.168.1.11 ansible_user=admin
```

### Running Playbooks

Run a playbook with:
```bash
ansible-playbook -i inventory.ini playbook.yaml
```

Example:
```bash
ansible-playbook -i inventory.ini Configure_SSH.yaml --ask-become-pass
```

### Ad-hoc Commands
Quickly run commands without a playbook:
```bash
ansible all -i inventory.ini -m ping
ansible all -i inventory.ini -m apt -a "name=htop state=present" --become
```

## 🔒 Security
- Store sensitive data in **Ansible Vault**:
```bash
ansible-vault encrypt secrets.yml
```
- Provide vault password when running playbooks:
```bash
ansible-playbook playbook.yml --ask-vault-pass
```

## 🤝 Contributing
Contributions are welcome! If you’d like to add or improve playbooks, feel free to fork the repo, make changes, and open a pull request.

## 📜 License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
