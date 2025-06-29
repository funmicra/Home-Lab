# Home-Lab
Home lab Documentation
# 🧪 DevOps Home Lab

Welcome to my home lab project! This lab simulates real-world infrastructure for hands-on learning and experimentation in DevOps, system administration, networking, and automation.

---

![Home-Lab(1)](https://github.com/user-attachments/assets/5f1a3309-7d7d-4f51-9285-9b538a789de1)


---

## 🏠 Site A (Home Lab)

### 🛠️ Hardware
- **6U Wall-mounted rack** with:
  - **24-port patch panel**
  - **TP-Link 24-port switch**
  - **MikroTik RB4011** as core router
  - **5 Wi-Fi access points** managed via **CAPsMAN** (MikroTik)
- **Dell mini PC** running **Proxmox VE**

### 🌐 Network Architecture
- **Subnet:** `192.168.88.0/25`
- **VLANs:**
  - `Guest` – limited internet-only access
  - `Smart Devices` – isolated IoT environment
  - `Admin` – full-access trusted LAN
- **DNS Filtering:** [AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) (LXC container)

### 💻 Virtualization with Proxmox
| VM / Container | Role                                  | OS             |
|----------------|----------------------------------------|----------------|
| `debian-docker` | Docker host (Nextcloud, Portainer, Heimdall, Watchtower) | Debian         |
| `openmediavault` | NAS with SMB shares and scheduled backups | OMV            |
| `kali-vm`       | Pentesting and security experiments   | Kali Linux     |
| `windows10-vm`  | Testing & Windows-based services      | Windows 10     |
| `adguard-lxc`   | Local DNS filtering                   | LXC (Debian)   |

---

## 🏢 Site B (Remote/Work)

### 🛠️ Hardware
- **Router:** MikroTik hAP ax²

### 🌐 Network Architecture
- **Subnet:** `192.168.88.128/25`
- **VLANs:** Guest, Devices, Admin
- **Connected to Site A** via **Zerotier VPN**

---

## 🔄 Inter-Site Connectivity

- **Site-to-Site VPN:** [ZeroTier](https://www.zerotier.com/) for seamless L2 connectivity
- **Remote Access:** SSH over VPN, Tailscale fallback
- **Backups & Sync:** Local + remote sync planned (BorgBackup + Restic)

---

## 🐳 Docker Services (on Debian VM)
| Service        | Purpose                            |
|----------------|------------------------------------|
| **Nextcloud**  | Self-hosted cloud storage          |
| **Portainer**  | GUI Docker container management    |
| **Watchtower** | Auto-update containers             |
| **Heimdall**   | Dashboard for accessing services   |

---

## ⚙️ Automation & Configuration Management

- **Ansible:**
  - Playbooks for VM provisioning, user creation, and system configuration
  - Docker deployment and container management
  - Automated patching and update jobs

---

## 📊 Monitoring & Maintenance

- **CAPsMAN** – centralized AP management with signal tuning
- **Watchtower** – automatic Docker container updates
- **OMV** – NAS monitoring and disk health
- **Uptime checks** – via custom scripts (TBD)

---

## 🧠 Skills Practiced

| Category             | Technologies & Tools                               |
|----------------------|----------------------------------------------------|
| **DevOps**           | Proxmox, Docker, Ansible, Watchtower               |
| **Networking**       | MikroTik (RouterOS), VLANs, CAPsMAN, ZeroTier      |
| **System Admin**     | Debian/Ubuntu, Windows, LXC, remote access (SSH)   |
| **Automation**       | Ansible (YAML), cron jobs, backup scripting        |
| **Security**         | DNS filtering (AdGuard), VLAN isolation, Kali Linux |

---

## 📌 Future Improvements

- 🔄 Reverse proxy with Traefik or Nginx Proxy Manager  
- 📊 Centralized logging with Loki + Grafana  
- 🧪 CI/CD pipelines for infra updates  
- 🧵 GitOps-style Ansible repo with inventory separation  
- 🛡️ Implement full backup strategy with Borg + Restic  
- 🔐 Add 2FA and secrets management (Vault or SOPS)

---

## ✍️ About Me

I'm passionate about learning DevOps and systems engineering through real-world experimentation. This home lab has been instrumental in building my skills and confidence, and I’m always evolving it as I explore new technologies.

If you’d like to connect or collaborate, feel free to reach out!

---
