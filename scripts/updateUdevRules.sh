
echo "sudo touch /etc/udev/rules.d/99-usb-serial.rules"
sudo touch /etc/udev/rules.d/99-usb-serial.rules

echo "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"0403\", ATTRS{idProduct}==\"6001\", ATTRS{serial}==\"AI05BAVI\", SYMLINK+=\"NRF_Master\"" | sudo tee --append /etc/udev/rules.d/99-usb-serial.rules
echo "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"0403\", ATTRS{idProduct}==\"6001\", ATTRS{serial}==\"AI05BA5R\", SYMLINK+=\"NRF_Master\"" | sudo tee --append /etc/udev/rules.d/99-usb-serial.rules
echo "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"0403\", ATTRS{idProduct}==\"6001\", ATTRS{serial}==\"AH01GYV4\", SYMLINK+=\"xBeeMaster\"" | sudo tee --append /etc/udev/rules.d/99-usb-serial.rules
echo "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"0403\", ATTRS{idProduct}==\"6015\", ATTRS{serial}==\"DN01E5ZP\", SYMLINK+=\"xBeeMaster\"" | sudo tee --append /etc/udev/rules.d/99-usb-serial.rules
echo "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"0403\", ATTRS{idProduct}==\"6015\", ATTRS{serial}==\"DN01E5ZT\", SYMLINK+=\"xBeeMaster\"" | sudo tee --append /etc/udev/rules.d/99-usb-serial.rules
echo "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"10c4\", ATTRS{idProduct}==\"ea60\", ATTRS{serial}==\"00E59831\", SYMLINK+=\"robot\"" | sudo tee --append /etc/udev/rules.d/99-usb-serial.rules

echo "sudo udevadm control --reload-rules"
sudo udevadm control --reload-rules

sudo usermod -a -G dialout $USER

