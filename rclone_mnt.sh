#!/bin/bash
home='/home/tilapiatsu'
cp ${home}/TILAPIATSU/RCLONE/GDRIVE/RESSOURCES/mnt-ressources.mount /etc/systemd/system/mnt-ressources.mount
cp ${home}/TILAPIATSU/RCLONE/GDRIVE/RESSOURCES/mnt-ressources.automount /etc/systemd/system/mnt-ressources.automount
cp ${home}/TILAPIATSU/RCLONE/GDRIVE/SOFTWARE_DATA/mnt-software_data.mount /etc/systemd/system/mnt-software_data.mount
cp ${home}/TILAPIATSU/RCLONE/GDRIVE/SOFTWARE_DATA/mnt-software_data.automount /etc/systemd/system/mnt-software_data.automount

systemctl daemon-reload
#systemctl enable --now mnt-ressources.automount
#systemctl enable --now mnt-software_data.automount
systemctl enable --now mnt-ressources.mount
systemctl enable --now mnt-software_data.mount
