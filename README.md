# RaspberryPiSetup

自分向けのRaspberryPi設定用スクリプトとなります。

# 使い方

1. SDカードへRaspberryPiOSのイメージを書き込み後```/boot```にこのスクリプトをコピーします。
2. RaspberryPi起動後、```bash```で以下で実行を行います。（実行が正常に終了するとRaspberryPiは再起動されるので注意）

```sh
sudo bash /boot/RaspberryPiSetup.sh
```

# 内容説明

前半は```raspi-config```コマンドの```-nonint```でUIなしの設定を行っていきます。

```sh
sudo raspi-config nonint do_change_locale ja_JP.UTF-8
sudo raspi-config nonint do_change_timezone Asia/Tokyo
sudo raspi-config nonint do_wifi_country JP
sudo raspi-config nonint do_vnc 0
```
* localeはja_JP.UTF8
* タイムゾーンはAsia/Tokyo
* WiFiの国識別はJP
* VNC有効化

```sh
sudo apt update && \
sudo apt install -y xrdp vim && \
sudo apt -y upgrade && \
sudo systemctl reboot
```

残りは```apt```コマンドでアップグレードと追加をし最後に再起動を行っています。
個人的な追加しているパッケージは```vim```と```xrdp```になります。```xrdp```はWindowsのリモートデスクトップアプリからの接続を行うものなので、インストールは必須ではありません。
vnc接続アプリをWindows側にインストールしていれば、そちらで使用してください。
