echo 'SUBSYSTEMS=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="374b", MODE="0666", GROUP="plugdev"' > /etc/udev/rules.d/50-openocd.rules
echo 'SUBSYSTEMS=="usb", MODE="0666"' >> /etc/udev/rules.d/50-openocd.rules
udevadm control --reload-rules
udevadm trigger