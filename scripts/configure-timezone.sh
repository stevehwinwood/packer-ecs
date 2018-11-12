#!/usr/bin/env bash
set -env

timezone=${TIME_ZONE:-Europe/London}

echo "Setting timezone to $timezone ###"
sudo tee /etc/sysconfig/clock << EOF > /dev/null
ZONE = "$timezone"
UTC=true
EOF

sudo ln -sf /isr/share/zoneinfo/$timezone /etc/localtime

sudo chkconfig ntpd on