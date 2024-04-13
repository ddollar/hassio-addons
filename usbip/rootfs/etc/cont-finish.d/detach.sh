#!/command/with-contenv bashio

for port in $(/usr/sbin/usbip port | grep Port | cut -b 6-7); do
  echo "Unmounting port ${port}"
	/usr/sbin/usbip --debug detach -p "${port}"
done