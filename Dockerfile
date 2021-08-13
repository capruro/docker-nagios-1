FROM alpine:3.12

RUN : 'Try to install net-snmp-tools.' && \
    CURRENT_ARCH=$(apk --print-arch) && \
    apk add net-snmp-tools; if [ "$?"  -ne 0 ]; then echo "WARNING: Failed to install net-snmp-tools in $CURRENT_ARCH" ; else echo "OK, installed net-snmp-tools in $CURRENT_ARCH"; fi
