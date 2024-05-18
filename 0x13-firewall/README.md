# 0x13. Firewall

This project involves installing the UFW (Uncomplicated Firewall) on the server `web-01` and setting up specific firewall rules. The aim is to enhance the security of the server by allowing only essential incoming traffic.

## Requirements

The following requirements are specific to the server `web-01`. However, you can apply the same configuration to `lb-01` and `web-02` if desired, but only `web-01` will be checked.

- **Block all incoming traffic**, except for the following TCP ports:
  - Port **22** (SSH)
  - Port **443** (HTTPS SSL)
  - Port **80** (HTTP)

## UFW Commands

Below are the UFW commands used to configure the firewall on `web-01`:

1. **Install UFW**
   ```bash
   sudo apt-get update
   sudo apt-get install ufw

