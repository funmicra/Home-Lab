# My DevOps Home-Lab / Syndicate
Home lab Documentation
## ✍️ About Me

I'm passionate about learning DevOps and systems engineering through real-world experimentation. This home lab has been instrumental in building my skills and confidence, and I’m always evolving it as I explore new technologies.

If you’d like to connect or collaborate, feel free to reach out! 
[e-mail](el.funmicra@gmail.com)

---
# 🧪 The Lab

Welcome to my home lab project! This lab simulates real-world infrastructure for hands-on learning and experimentation in DevOps, system administration, networking, and automation.

---

I built it on July 2018 and still improving it..
---
# 🖧 Network Topology
![Home-Lab](https://github.com/user-attachments/assets/130d23e8-c96b-4f12-b8f6-2563699e8ad3)

---

## 🏠 Site A (Home Lab)

### 🛠️ Hardware
![6U Wall-mounted rack](https://github.com/user-attachments/assets/3c3fb64c-a953-4f3e-bf42-8e76f6c3abe4)
- **6U Wall-mounted rack with:**
- **24-port patch panel**
- **TP-Link 24-port switch (unmanaged)**
- **MikroTik RB4011:** as core router and LANs isolator with Fireewall filters
- **TP-LINK TL-MR6400:** as failover modem solution for zero down time
- **5 Wi-Fi access points:** managed via **CAPsMAN** (MikroTik)
- **PiKVM::** for remote troubleshooting my ProxMox server
- **CCTV with 5 cameras:** for home security
- **Dell mini PC:** running **Proxmox VE**

### 🌐 Network Architecture
- **Subnet:** `192.168.88.0/25`
- **VLANs:**
  - `Guest` – limited internet-only access
  - `Smart Devices` – isolated IoT environment
  - `Admin` – full-access trusted LAN
  - `Repairments` – Isolated LAN for devices that i repair
- **DNS Filtering:** [AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) (LXC container)

### 💻 Virtualization with Proxmox
<img width="1918" height="880" alt="Screenshot from 2025-08-30 15-45-14" src="https://github.com/user-attachments/assets/a7840bcf-89d6-4d06-8d3e-015ea9d8f23a" />

| VM / Container | Role                                  | OS             |
|----------------|----------------------------------------|----------------|
| `debian-docker Production Server` | Docker host (Nextcloud, Portainer, Heimdall, Watchtower) | Debian         |
| `debian-docker Testing Server` | Docker host (Testing various applications and microservises before they migrate to production server) | Debian         |
| `openmediavault` | NAS with SMB and NFS shares and scheduled backups | OMV            |
| `kali-vm`       | Pentesting and security experiments   | Kali Linux     |
| `windows10-vm`  | Testing & Windows-based services      | Windows 10     |
| `adguard-lxc`   | Local DNS filtering                   | LXC (Debian)   |

---

## 🏢 Site B (Remote/Work)

### 🛠️ Hardware
- **Router:** MikroTik hAP ax²
- **Three Mikrotik Access Points:** For better customer experience and better devices roaming
- **CCTV with 8 cameras:** for business security 
- **Central Pc:** For playing music and other simple office jobs
- **EFTPOS:** For contactless payments
- **POS(Point of Sales):** Self hosted on a Raspberry pi 4 with barcode scanner and a tablet as a remote monitor for the sales - [odoo](https://www.odoo.com/app/point-of-sale-shop)
- **Cashier Mashine**

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
<img width="1918" height="880" alt="Screenshot from 2025-08-30 15-47-06" src="https://github.com/user-attachments/assets/6872ed22-f54c-400d-a02f-933b2f20a580" />
<img width="1918" height="880" alt="Screenshot from 2025-08-30 15-47-27" src="https://github.com/user-attachments/assets/f57005ee-b527-4b6c-8387-66103fcee155" />
<img width="1918" height="880" alt="Screenshot from 2025-08-30 15-47-42" src="https://github.com/user-attachments/assets/03a75ced-345f-4f6d-a3b8-55bf805b6d93" />

|Service        | Purpose                            |             Local / Public                               |
|----------------|------------------------------------|--------------------------------------------|
| **[Nextcloud](https://black-crab.cc/)**  | Self-hosted cloud storage for me and my family members |  Runs Public with custom cloudflare domain  |
| **Portainer**  | GUI Docker container management    | Runs localy  |
| **Heimdall**   | Dashboard for accessing services   |  Runs localy  |
| **Vaultwarden**   | Self-Hosted password manager solution   |  Runs Public with custom cloudflare domain  |
| **YoutubeDL**  | Application for downloading from YouTube   |  Runs localy  |
| **Uptime Kuma**  | Monitoring the servises and apps   |  Runs localy  |
| **AgentDVR**  | Monitoring cctv cameras on both sites   |  Runs localy  |
| **Clouflare**  | Container for secure tunneling my NextCloud and vaultwarden app with public Domains    |  Runs localy  |

---




