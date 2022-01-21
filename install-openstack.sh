echo "need Super User Level before run this script"
sudo apt update && sudo apt upgrade -y
sudo snap install microstack --devmode --edge

# /var/snap/microstack/common/etc/horizon/local_settings.d/_05_snap_tweaks.py
sudo sed  -i 's/DEBUG = False/DEBUG = True/g' /var/snap/microstack/common/etc/horizon/local_settings.d/_05_snap_tweaks.py
#
echo "Micostack installed and enable WebGUI"
