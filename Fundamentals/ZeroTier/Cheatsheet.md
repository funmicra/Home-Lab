# 🔧 Zerotier CLI Cheatsheet (Linux)

## Basic Info
Shows node ID, online/offline state, and version.
```bash
zerotier-cli info
```
## Network Management
Join a network.
```bash
zerotier-cli join <network_id>
```
Example:
```bash
zerotier-cli join 8056c2e21c000001
```
Leave a network.
```bash
zerotier-cli leave <network_id>
```
Leave all networks.
```bash
zerotier-cli leave -a
```
List joined networks, assigned IPs, status, and routes.
```bash
zerotier-cli listnetworks
```

## Peers
Show connected peers (direct connections).
```bash
zerotier-cli listpeers
```

## Network Details
Get network-specific settings.
```bash
zerotier-cli get <network_id> <setting>
```
Examples:
```bash
zerotier-cli get <network_id> status
zerotier-cli get <network_id> assignedAddresses
```
Set network configuration.
Example:
```bash
zerotier-cli set <network_id> allowManaged=1
```

## JSON Output (for scripting/automation)
```bash
zerotier-cli -j info
zerotier-cli -j listnetworks
```
## Reset Node (⚠️ Dangerous)
Resets node identity (generates new node ID).
```bash
sudo systemctl stop zerotier-one
sudo rm -rf /var/lib/zerotier-one
sudo systemctl start zerotier-one
```
## 💡 Tip: Zerotier node IDs live in /var/lib/zerotier-one.
If you clone a VM/container, reset that folder to avoid duplicate IDs.
