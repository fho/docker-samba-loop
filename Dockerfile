FROM alpine

RUN apk update; apk add --no-cache cifs-utils
CMD set -x ; \
    mount.cifs //$SAMBA_PORT_445_TCP_ADDR/public /mnt/ -o vers=3.0,rw,user=root,password=123; \
    dd if=/dev/urandom of=/mnt/testfile-$(hostname) bs=1M count=50 ; \
    ls -la /mnt ; \
    rm /mnt/testfile-$(hostname); \
    umount /mnt ; \
    echo "umount ok"
