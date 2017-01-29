#!/bin/bash

WRAITH_HOME="/opt/wraith"
CONFIG_DIR="/config"

if [[ ! -f ${CONFIG_DIR}"/oidentd.conf" ]]; then
	cp -f /etc/oidentd.conf ${CONFIG_DIR}
fi

if [[ ! -f ${CONFIG_DIR}"/wraith" ]]; then
	cp -f ${WRAITH_HOME}"/wraith" ${CONFIG_DIR}
fi

chown -R nobody:users ${CONFIG_DIR}
chown oident:oident ${CONFIG_DIR}/oidentd.conf
rm -f ${CONFIG_DIR}/.../.pid.*
chmod 700 ${CONFIG_DIR}"/wraith"
