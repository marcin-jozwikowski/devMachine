#! /bin/bash
apt-get -y install openssh-server
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
chmod a-w /etc/ssh/sshd_config.factory-defaults
sed -i 's/RSAAuthentication yes/RSAAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/PubkeyAuthentication yes/PubkeyAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/PermitEmptyPasswords no/PermitEmptyPasswords yes/g' /etc/ssh/sshd_config
sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
sed -i 's/SendEnv LANG LC_/#SendEnv LANG LC_/g' /etc/ssh/ssh_config
sed -i 's/AcceptEnv LANG LC_/#AcceptEnv LANG LC_/g' /etc/ssh/sshd_config
echo "" >> /etc/ssh/sshd_config
echo "AllowUsers osboxes" >> /etc/ssh/sshd_config
echo "" >> /etc/bash.bashrc
echo 'export LC_ALL="en_ZA.UTF-8"' >> /etc/bash.bashrc
echo 'export LC_CTYPE="en_ZA.UTF-8"' >> /etc/bash.bashrc
restart ssh