#!/usr/bin/with-contenv bashio
# ==============================================================================
# Ulrar Hass.io Add-ons: owntone server
# Configures the owntone Server
# ==============================================================================

if ! bashio::fs.directory_exists '/share/owntone/cache'; then
    bashio::log.debug 'Creating cache folder...'
    mkdir -p /share/owntone/cache
fi

if ! bashio::fs.file_exists '/share/owntone/owntone.conf'; then
    bashio::log.debug 'Copying default conf file...'
    cp /usr/local/etc/owntone.conf /share/owntone/owntone.conf
fi

if ! bashio::fs.directory_exists '/share/owntone/music'; then
    bashio::log.debug 'Creating music folder...'
    mkdir -p /share/owntone/music
    bashio::log.debug 'Creating HA fifo file...'
    mkfifo -m 666 /share/owntone/music/HomeAssistantAnnounce
fi
