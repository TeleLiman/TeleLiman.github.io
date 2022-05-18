# Update pip install
sudo apt update
sudo apt upgrade
sudo apt install python3, python3-pip, git, wget

# Bağımlılıklar
pip3 install requests, json
sudo apt install python3-paramiko

# Getir
git clone https://github.com/TeleLiman/TelelimanExtension.git /liman/extensions/
mv TelelimanExtension/ teleliman/

# Root Service sh
echo 'nohup python3 /liman/extensions/teleliman/scripts/main.py  > /dev/null 2>&1 &' > /root/service.sh

# Service oluştur
wget -P /etc/systemd/system/ https://teleliman.github.io/downloads/teleliman.service

# Servis Sonrası
systemctl daemon-reload
systemctl enable teleliman.service
systemctl start teleliman.service

# Reboot
reboot
