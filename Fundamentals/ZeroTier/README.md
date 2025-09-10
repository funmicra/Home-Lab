# ZeroTier Networking

ZeroTier is a software-based network hypervisor that creates secure, encrypted, peer-to-peer virtual networks.  
Think of it as a blend of a VPN and SD-WAN: it allows devices across the world (servers, PCs, VMs, IoT, containers, mobile devices) to securely communicate as if they were on the same local network.

---

## 🌐 Key Features
- **Peer-to-Peer Encrypted Networking** – Secure end-to-end communication without central bottlenecks.  
- **Cross-Platform** – Works on Linux, Windows, macOS, iOS, Android, and network appliances.  
- **Flexible** – Supports flat networks, private LANs, or routed multi-site setups.  
- **Easy Integration** – Works with Kubernetes, Docker, VMs, and even MikroTik or UniFi gear.  
- **Scalable** – Use it for small labs or large production deployments.

---

## 📦 Installation

### Linux (Debian/Ubuntu)
```bash
curl -s https://install.zerotier.com | sudo bash
sudo zerotier-cli join <NETWORK_ID>
```
Check status:
```bash
sudo zerotier-cli status
```
### Dcker
```bash
docker run --device=/dev/net/tun --net=host --cap-add=NET_ADMIN \
  -v /var/lib/zerotier-one:/var/lib/zerotier-one \
  zerotier/zerotier-cli join <NETWORK_ID>
```
### Android / iOS

- Install ZeroTier One from the App Store or Google Play.

- Enter your Network ID to join.

### 📚 Documentation & Resources

- ZeroTier Official Docs [https://docs.zerotier.com/]
- ZeroTier GitHub
- Community Forum
