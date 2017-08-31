#!/bin/bash

docker build -t client-smb:1 .

for ((i=0; i <50; i++)); do
	docker run  --rm --name client-smb --privileged --link samba:samba client-smb:1
done
