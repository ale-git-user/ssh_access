#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Alejandro Rodriguez <arodriguez at termmed.com>' -s ${MY_SHELL} -m arodriguez
cat >/etc/sudoers.d/arodriguez-ALL <<EOF
kaik     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/arodriguez-ALL
mkdir ~arodriguez/.ssh
chmod 700 ~arodriguez/.ssh
curl  https://raw.githubusercontent.com/ale-git-user/ssh_access/master/ale_ssh_key.pub >~arodriguez/.ssh/authorized_keys
chmod 400 ~arodriguez/.ssh/authorized_keys
chown -R arodriguez ~arodriguez/.ssh
