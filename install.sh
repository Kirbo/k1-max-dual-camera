#!/bin/sh

cp startup_dual_cameras.sh /usr/data/startup_dual_cameras.sh
chmod +x /usr/data/startup_dual_cameras.sh

cp S99dual_cameras /etc/init.d/S99dual_cameras
chmod +x /etc/init.d/S99dual_cameras

/etc/init.d/S99dual_cameras start
