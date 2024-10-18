# run me as sudo!
# Vbox settings - network - bridged - select active host network

# echo "allmyfriends ALL=(ALL:ALL) ALL" | sudo tee -a /etc/sudoers

apt-get update
apt-get install -y ca-certificates curl openssh-server ufw git htop neofetch
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

systemctl enable --now ssh

ufw enable
ufw allow ssh
ufw reload

ip addr show