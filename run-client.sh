#!/bin/bash

docker build -t client-smb:1 .

for ((i=0; i <10; i++)); do
	( for ((j=0; j <10; j++)); do docker run --rm --name client-smb-$i-$j --privileged --link samba:samba client-smb:1; done ) &
done
