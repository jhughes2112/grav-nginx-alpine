#!/bin/sh

set -x
set -e

# copy the grav install folder to the html folder if missing.  Helps with new setups.
if [ -e /var/www/html/index.php ]; then
	echo "[ INFO ] Grav already exists"
else
	echo "[ INFO ] Grav is missing.  Copying into web folder."
	cp -Rp /var/www/grav-admin/* /var/www/html/
fi

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf