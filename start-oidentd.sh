#!/bin/bash

/usr/sbin/oidentd -t 60 -e -q -i -u oident -g oident -C /config/oidentd.conf
