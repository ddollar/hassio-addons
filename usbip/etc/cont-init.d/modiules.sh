#!/command/with-contenv bashio
# ==============================================================================
# Home Assistant Add-on: USBIP Mounter
# Load client kernel module
# ==============================================================================

bashio::log.info "loading vhci-hcd kernel module"

/sbin/modprobe vhci-hcd
