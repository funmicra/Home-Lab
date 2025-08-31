# 💻🛠️ Ansible Commands Cheatsheet

## Inventory
```bash
# Test inventory hosts
ansible all -i inventory.ini --list-hosts

# Ping all hosts
ansible all -i inventory.ini -m ping

# Run command on all hosts
ansible all -i inventory.ini -m shell -a "uptime"
```

## Ad-hoc Commands
```bash
# Copy file
ansible all -m copy -a "src=/local/file dest=/remote/path"

# Fetch file from remote
ansible all -m fetch -a "src=/remote/file dest=/local/dir flat=yes"

# Install package (Debian/Ubuntu)
ansible all -m apt -a "name=htop state=present" --become

# Remove package
ansible all -m apt -a "name=apache2 state=absent" --become

# Install package (RHEL/CentOS)
ansible all -m yum -a "name=htop state=present" --become

# Restart service
ansible all -m service -a "name=nginx state=restarted" --become

# Ensure service is enabled and running
ansible all -m service -a "name=sshd state=started enabled=yes" --become

# Create user
ansible all -m user -a "name=deploy state=present shell=/bin/bash" --become

# Add user to group
ansible all -m user -a "name=deploy groups=sudo append=yes" --become

# Manage file permissions
ansible all -m file -a "path=/remote/file mode=0644 owner=root group=root" --become

# Create directory
ansible all -m file -a "path=/opt/myapp state=directory mode=0755" --become

# Download file with get_url
ansible all -m get_url -a "url=https://example.com/file.tar.gz dest=/tmp/file.tar.gz"

# Unarchive file
ansible all -m unarchive -a "src=/tmp/file.tar.gz dest=/opt/myapp remote_src=yes" --become

# Run command with arguments
ansible all -m command -a "df -h"

# Run arbitrary shell command
ansible all -m shell -a "tail -n 100 /var/log/syslog"

# Check available updates (Debian/Ubuntu)
ansible all -m apt -a "upgrade=dist update_cache=yes" --become

# Reboot servers
ansible all -m reboot --become
```

## Playbooks
```bash
# Run playbook
ansible-playbook -i inventory.ini playbook.yml

# Run playbook with limit to one host\ansible-playbook -i inventory.ini playbook.yml --limit hostname

# Run playbook with tags
ansible-playbook -i inventory.ini playbook.yml --tags "setup,deploy"

# Skip specific tags
ansible-playbook -i inventory.ini playbook.yml --skip-tags "debug"

# Check mode (dry-run)
ansible-playbook -i inventory.ini playbook.yml --check

# Syntax check
ansible-playbook playbook.yml --syntax-check

# Start at specific task
ansible-playbook playbook.yml --start-at-task="Install packages"
```

## Variables & Vault
```bash
# Pass extra variables
ansible-playbook playbook.yml -e "user=admin debug=true"

# Use variable file
ansible-playbook playbook.yml -e "@vars.yml"

# Encrypt a file with vault
ansible-vault encrypt secrets.yml

# Decrypt file
ansible-vault decrypt secrets.yml

# Edit file
ansible-vault edit secrets.yml

# Run playbook with vault password file
ansible-playbook playbook.yml --ask-vault-pass
ansible-playbook playbook.yml --vault-password-file ~/.vault_pass.txt
```

## Roles & Galaxy
```bash
# Create new role structure
ansible-galaxy init myrole

# Install roles from requirements.yml
ansible-galaxy install -r requirements.yml
```

## Debugging & Verbosity
```bash
# Increase verbosity (add more v's for more detail)
ansible-playbook playbook.yml -vvv

# Print all variables for a host
ansible -i inventory.ini hostname -m debug -a "var=hostvars[inventory_hostname]"
```

## Useful Inventory Tricks
```bash
# Run against a group
ansible-playbook -i inventory.ini playbook.yml --limit webservers

# Use dynamic inventory script
ansible -i inventory_ec2.yml all -m ping
```

---
✅ Pro tip: Use `--check --diff` together to preview changes without applying them.



