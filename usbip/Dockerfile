ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.2.2

FROM ${BUILD_FROM}

ARG BUILD_ARCH=amd64

RUN apk add --no-cache \
    kmod \
    linux-tools-usbip \
    hwids-usb \
    device-mapper-libs

COPY etc /etc

ARG BUILD_ARCH
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_VERSION

LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="David Dollar <david@dollar.io>" \
