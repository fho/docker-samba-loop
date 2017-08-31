Run the samba server:
```
./run-server.sh
```

Build the docker container & do a cifs mount + umount in a loop
```
./run-client.sh
```

The following message will appear in the kernel log:
```
unregister_netdevice: waiting for lo to become free. Usage count = 1
```

Some minutes later the kernel problems documented in kernel-logs/ appear.
