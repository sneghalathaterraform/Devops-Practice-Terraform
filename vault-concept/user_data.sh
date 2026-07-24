#!/bin/bash
set -e

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
apt-get update && apt-get install -y vault

cat <<EOF > /etc/systemd/system/vault.service
[Unit]
Description=Vault Dev Server
After=network.target

[Service]
ExecStart=/usr/bin/vault server -dev -dev-listen-address=0.0.0.0:8200 -dev-root-token-id=root
Restart=on-failure
User=root

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable vault
systemctl start vault