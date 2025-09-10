# 🔧 Zerotier CLI Cheatsheet (Linux)

## Basic Info
Shows node ID, online/offline state, and version.
```bash
zerotier-cli info
```
## Network Management
- Join a network.
```bash
zerotier-cli join <network_id>
```
Example:
```bash
zerotier-cli join 8056c2e21c000001
```
- Leave a network.
```bash
zerotier-cli leave <network_id>
```
Leave all networks.
```bash
zerotier-cli leave -a
```
- List joined networks, assigned IPs, status, and routes.
```bash
zerotier-cli listnetworks
```

## Peers
Show connected peers (direct connections).
```bash
zerotier-cli listpeers
```

## Network Details
- Get network-specific settings.
```bash
zerotier-cli get <network_id> <setting>
```
Examples:
```bash
zerotier-cli get <network_id> status
zerotier-cli get <network_id> assignedAddresses
```
- Set network configuration.
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

## 🛠️ Troubleshooting Appendix
# Node is offline
- Check if service is running:
```bash
systemctl status zerotier-one
```
- Restart service:
```bash
sudo systemctl restart zerotier-one
```
# Node joined but not authorized
- Log into my.zerotier.com [https://my.zerotier.com] --> (or your controller).
- Approve the node’s ID under the network settings.

# Node has no IP assigned
- Verify network configuration:
```bash
zerotier-cli listnetworks
```
- Check that "Auto-Assign IPs" is enabled in the controller.
- Restart the node:
  ```bash
  sudo systemctl restart zerotier-one
  ```
# Can’t see peers
- Verify both nodes are in the same network:
```bash
zerotier-cli listnetworks
```
- Check peer list:
```bash
zerotier-cli listpeers
```
- Ensure firewalls allow UDP 9993.

# Still no connectivity
- Test ping between Zerotier-assigned IPs.
- If fails, verify routes are pushed by the controller.
- If NAT is in play, make sure outbound UDP is not blocked.
