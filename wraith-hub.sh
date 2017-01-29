#!/bin/bash

if [[ -f "/config/hub/hub" ]]; then
	chmod 700 /config/hub/hub
	exec /sbin/setuser nobody /config/hub/hub
else
	exec /sbin/setuser nobody sleep inf
fi
