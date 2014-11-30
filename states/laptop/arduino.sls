/etc/udev/rules.d/90-arduino.rules:
  file:
    - managed
    - content: |
               SUBSYSTEMS=="usb", ATTRS{idProduct}=="0043", ATTRS{idVendor}=="2341", SYMLINK+="arduino arduino_uno_$attr{serial}", MODE="0660"
               SUBSYSTEMS=="usb", ATTRS{idVendor}=="1781", ATTRS{idProduct}=="0c9f", GROUP="adm", MODE="0666"
    - append_if_not_found: True

