FROM alpine:3.13

RUN : 'Try to install net-snmp-tools.' && \
    ALPINE_VERSION=$(cat /etc/alpine-release) && \
    CURRENT_ARCH=$(apk --print-arch) && \
    apk update && \
    apk add net-snmp-tools; \
                            \
    if [ "$?"  -ne 0 ]; then \
      echo "WARNING: Failed to install net-snmp-tools in alpine: $ALPINE_VERSION (arch $CURRENT_ARCH)"; \
    else \
      echo "OK, installed net-snmp-tools in alpine: $ALPINE_VERSION (arch $CURRENT_ARCH)", alpine: $ALPINE_VERSION; \
    fi
