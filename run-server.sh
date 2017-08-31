#!/bin/bash

chmod -R 777 exports
docker run -it --rm --name samba -p 139:139 -p 445:445 -v $PWD/exports:/share dperson/samba -r -s "public;/share;yes;no;yes;all;none;"
