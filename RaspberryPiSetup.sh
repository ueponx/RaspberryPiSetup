#!/bin/bash
sudo raspi-config nonint do_change_locale ja_JP.UTF-8
sudo raspi-config nonint do_change_timezone Asia/Tokyo
sudo raspi-config nonint do_wifi_country JP
sudo raspi-config nonint do_vnc 0
sudo apt update && \
sudo apt install -y xrdp vim && \
sudo apt -y upgrade && \
sudo systemctl reboot
