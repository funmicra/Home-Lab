# Home-Lab
Home lab Documentation
# 🧪 DevOps Home Lab

Welcome to my home lab project! This lab simulates real-world infrastructure for hands-on learning and experimentation in DevOps, system administration, networking, and automation.


I built it on July 2018 and still improving it..
---

![Home-Lab](https://github.com/user-attachments/assets/130d23e8-c96b-4f12-b8f6-2563699e8ad3)

---

## 🏠 Site A (Home Lab)

### 🛠️ Hardware
- **[6U Wall-mounted rack](https://github.com/user-attachments/assets/3c3fb64c-a953-4f3e-bf42-8e76f6c3abe4)** with:
  - **24-port patch panel**
  - **TP-Link 24-port switch (unmansaged)**
  - **MikroTik RB4011** as core router and LANs isolator with Fireewall filters
  - **TP-LINK TL-MR6400** as failover modem solution for zero down time
  - **5 Wi-Fi access points** managed via **CAPsMAN** (MikroTik)
- **Dell mini PC** running **Proxmox VE**

### 🌐 Network Architecture
- **Subnet:** `192.168.88.0/25`
- **VLANs:**
  - `Guest` – limited internet-only access
  - `Smart Devices` – isolated IoT environment
  - `Admin` – full-access trusted LAN
  - `Repairments` – Isolated LAN for devices that i repair
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
- **Connected to Site A Admin network** via **Zerotier VPN**

---

## 🔄 Inter-Site Connectivity

- **Site-to-Site VPN:** [ZeroTier](https://www.zerotier.com/) for seamless L2 connectivity
- **Remote Access:** SSH over VPN, WireGuard fallback
- **Backups & Sync:** Local + remote sync planned (rsync cronjob + OMV cronjobs)

---

## 🐳 Docker Services (on Debian VM)
| Service        | Purpose                            |
|----------------|------------------------------------|
| **[Nextcloud](https://black-crab.cc/)**  | Self-hosted cloud storage for me and my family members         |
| **Portainer**  | GUI Docker container management    |
| **Watchtower** | Auto-update containers             |
| **Heimdall**   | Dashboard for accessing services   |
| **YoutubeDL**  | Application for downloading from YouTube   |
| **Clouflare**  | Container for secure tunneling my NextCloud app with the Domain    |

---

## ⚙️ Automation & Configuration Management

- **Ansible:**
  - [Playbooks](https://github.com/funmicra/Home-Lab/tree/master/Ansible-Playbooks) for updating, upgrading, provisioning, user creation, and system configuration
  - [Docker deployment and container management](https://github.com/funmicra/Home-Lab/tree/master/My%20Docker%20Stacks)

---

## 📊 Monitoring & Maintenance

- **CAPsMAN** – centralized AP management with signal tuning
- **Watchtower** – automatic Docker container updates
- **OMV** – NAS monitoring and disk health
- **Uptime Kuma** – for monitoring my servises 

---

## 🧠 Skills Practiced

| Category             | Technologies & Tools                               |
|----------------------|----------------------------------------------------|
| **DevOps**           | Proxmox, Docker, Ansible, Linux cli, Scripting               |
| **Networking**       | MikroTik (RouterOS), VLANs, CAPsMAN, ZeroTier      |
| **System Admin**     | Debian/Ubuntu, Windows, LXC, remote access (SSH)   |
| **Automation**       | Ansible (YAML), cron jobs, backup scripting        |
| **Security**         | DNS filtering (AdGuard), VLAN isolation, Kali Linux |

---

## 📌 Future Improvements

- 🔄 Clone all this infrastructure from self-hosted on AWS for clustering and higher availability  
- 📊 Centralized logging with Prometheus + Grafana  
- 🧪 CI/CD pipelines for infra updates with Jenkins and Git Actions
- 🧵 GitOps-style Ansible repo with inventory separation  
- 🛡️ Implement full backup strategy with ProxMox Backup Server (2nd Device) 
- 🔐 Add 2FA and secrets management (Vault or SOPS)

---

## ✍️ About Me

I'm passionate about learning DevOps and systems engineering through real-world experimentation. This home lab has been instrumental in building my skills and confidence, and I’m always evolving it as I explore new technologies.

If you’d like to connect or collaborate, feel free to reach out!

---
