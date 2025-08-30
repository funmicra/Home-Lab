# 🐧 Linux Commands Cheatsheet

## 📂 System Navigation
```bash
pwd              # Print working directory
ls               # List files
ls -lah          # Long listing with hidden files, human-readable sizes
cd /path/to/dir  # Change directory
cd ~             # Go to home
cd -             # Jump back to previous directory
```

## 📁 File Operations
```bash
touch file.txt           # Create empty file
cp file1 file2           # Copy file
cp -r dir1 dir2          # Copy directory
mv file1 file2           # Move/rename file
rm file.txt              # Delete file
rm -r dir                # Delete directory
rm -rf dir               # Force remove without prompt
```

## 📖 Viewing & Editing
```bash
cat file.txt             # Print file content
less file.txt            # View file, scroll with arrows
head -n 20 file.txt      # First 20 lines
tail -n 20 file.txt      # Last 20 lines
tail -f file.txt         # Stream file updates (e.g. logs)
nano file.txt            # Edit file (simple editor)
vim file.txt             # Edit file (advanced editor)
diff file1 file2         # Compare files
```

## 🔍 Search & Find
```bash
grep "text" file.txt           # Search for text
grep -r "text" /dir            # Recursive search
grep -i "text" file.txt        # Case-insensitive search
find /path -name "*.log"       # Find files by name
```

## 🔑 Permissions
```bash
chmod 755 file.sh        # Change permissions (rwxr-xr-x)
chmod +x file.sh         # Add execute permission
chown user:group file    # Change ownership
```

## ⚙️ Processes & System
```bash
ps aux                    # Show all processes
killall processname       # Kill all processes with given name
top                       # Live process monitor
htop                      # Better top (if installed)
kill -9 PID               # Kill process
df -h                     # Disk usage
du -sh dir/               # Size of directory
free -h                   # Memory usage
uptime                    # System uptime/load
```

## ⚙️ Systemd (services & logs)
```bash
systemctl status service       # Check status of a service
systemctl start service        # Start a service
systemctl stop service         # Stop a service
systemctl restart service      # Restart a service
systemctl enable service       # Enable service at boot
systemctl disable service      # Disable service at boot

journalctl -u service          # View logs for a service
journalctl -xe                 # View recent errors
journalctl -f                  # Follow logs in real time
```

## 🌐 Networking & Firewall
```bash
ip a                      # Show IP addresses
ip r                      # show routing table
ip link set eth0 down     # bring interface down
ip link set eth0 up       # bring interface up
ping -c 4 google.com      # Ping host
curl ifconfig.me          # External IP
wget URL                  # Download file
netstat -tulnp            # List ports in use
ss -tuln                  # Modern netstat alternative

# UFW commands
ufw status
ufw allow ssh
ufw allow 80/tcp
ufw allow 443/tcp
ufw deny 23/tcp    # block telnet

# iptables example
iptables -L -n -v
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -j DROP
```

## 📦 Archives & Compression
```bash
tar -czvf archive.tar.gz dir/    # Compress directory
tar -xzvf archive.tar.gz         # Extract archive
zip -r archive.zip dir/          # Create zip
unzip archive.zip                # Extract zip
```

## 📦 Package Management (Debian/Ubuntu)
```bash
sudo apt update                      # Update package lists from repositories
sudo apt upgrade                     # Upgrade all installed packages to latest versions
sudo apt full-upgrade                # Upgrade and handle dependencies intelligently
sudo apt install pkgname             # Install a package
sudo apt remove pkgname              # Remove a package but keep configuration files
sudo apt purge pkgname               # Remove package and its configuration files
sudo apt autoremove                  # Remove orphaned packages (no longer needed)
sudo apt search keyword              # Search for packages matching keyword
apt show pkgname                     # Show detailed information about a package
dpkg -l                              # List all installed packages
```

## 📦 Package Management (RHEL/Fedora)
```bash
sudo dnf check-update                # Check for available package updates
sudo dnf update                      # Update all installed packages
sudo dnf upgrade                     # Upgrade packages (alias of update in most cases)
sudo dnf install pkgname             # Install a package
sudo dnf remove pkgname              # Remove a package
sudo dnf autoremove                  # Remove orphaned dependencies
sudo dnf search keyword              # Search for packages by keyword
sudo dnf info pkgname                # Show detailed info about a package
sudo dnf list installed              # List all installed packages
```

## 📦 Package Management (Manjaro/Arch)
```bash
sudo pacman -Syu                     # Update package database and upgrade all packages
sudo pacman -S pkgname               # Install a package
sudo pacman -R pkgname               # Remove a package
sudo pacman -Rns pkgname             # Remove package and unneeded dependencies
sudo pacman -Ss keyword              # Search for packages in repositories
sudo pacman -Qi pkgname              # Show detailed information about a package
sudo pacman -Qs keyword              # Search installed packages matching keyword
sudo pacman -Q                       # List all installed packages
```

## 👤 Users
```bash
whoami                    # Current user
id                        # User and group IDs
sudo useradd -m newuser   # Add user
sudo passwd newuser       # Set password
sudo userdel -r newuser   # Remove user and home dir
```

## 👥 Groups
```bash
groupadd devs                # Create a new group
groupdel devs                # Delete a group
groupmod -n newname oldname  # Rename a group

usermod -aG devs username    # Add user to a group
gpasswd -d username devs     # Remove user from a group
groups username              # Show groups of a user
```

## 🔒 SSH & Remote
```bash
# Connect & copy
ssh user@host                   # Connect to remote host
scp file user@host:/path        # Copy file to remote host
rsync -av file dir/ host:/path  # Sync files

# SSH Key Management
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"   # Generate a new RSA key pair
ssh-keygen -t ed25519 -C "your_email@example.com"       # Generate a new Ed25519 key pair
ssh-copy-id user@host                                   # Copy public key to remote host
ssh-add ~/.ssh/id_rsa                                   # Add private key to ssh-agent
```

## ⚡ Shortcuts & Tricks
```bash
!!                       # Repeat last command
!123                     # Run command #123 from history
Ctrl+C                   # Kill current command
Ctrl+Z                   # Suspend command
fg                       # Resume suspended job
bg                       # Resume suspended job in background
jobs                     # List current jobs
history                  # Show command history
```
