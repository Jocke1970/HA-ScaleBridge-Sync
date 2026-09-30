FROM ulfdalen/scalebridge-sync:0.0.3

ARG BUILD_VERSION
ARG BUILD_ARCH

USER root

RUN apk add --no-cache jq

COPY run.sh /run.sh
RUN chmod 755 /run.sh

LABEL \
  io.hass.version="${BUILD_VERSION}" \
  io.hass.type="app" \
  io.hass.arch="${BUILD_ARCH}"

ENTRYPOINT ["/run.sh"]
