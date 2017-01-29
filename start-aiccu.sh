#!/bin/bash

[ -e /etc/aiccu.env ] && source /etc/aiccu.env

CONF=/etc/aiccu.conf

cp -a ${CONF}{.orig,}

if [ -n "$AICCU_USERNAME" ]; then
    echo "username $AICCU_USERNAME" >> $CONF
fi

if [ -n "$AICCU_PASSWORD" ]; then
    echo "password $AICCU_PASSWORD" >> $CONF
fi

if [ -n "$AICCU_PROTOCOL" ]; then
    echo "protocol $AICCU_PROTOCOL" >> $CONF
fi

if [ -n "$AICCU_SERVER" ]; then
    echo "server $AICCU_SERVER" >> $CONF
fi

if [ -n "$AICCU_TUNNEL" ]; then
    echo "tunnel_id $AICCU_TUNNEL" >> $CONF
fi

if [ -n "$AICCU_DEFGW" ]; then
    echo "defaultroute false" >> $CONF
fi

if [ -n "$AICCU_SCRIPT" ]; then
    [ -x $AICCU_SCRIPT ] && echo "setupscript $AICCU_SCRIPT" >> $CONF
fi

echo "behindnat true" >> $CONF
echo "daemonize false" >> $CONF

/usr/sbin/aiccu start
