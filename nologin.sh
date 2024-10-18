mkdir -p /etc/systemd/system/getty@tty1.service.d
echo "[Service]" > /etc/systemd/system/getty@tty1.service.d/override.conf
echo "ExecStart=" >> /etc/systemd/system/getty@tty1.service.d/override.conf
echo "ExecStart=-/sbin/agetty --autologin allmyfriends --noclear %I 38400 linux" >> /etc/systemd/system/getty@tty1.service.d/override.conf
systemctl daemon-reload
systemctl restart getty@tty1.service