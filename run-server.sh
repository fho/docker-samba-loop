#!/bin/bash

docker run -it --rm --name samba -p 139:139 -p 445:445 -v $PWD/exports:/share dperson/samba -s "public;/share"
