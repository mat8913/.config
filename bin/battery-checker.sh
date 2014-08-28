#!/bin/sh
LEVEL=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "percentage" | awk '{print $2}' | awk -F '.' '{print $1}')
if [ $LEVEL -lt 6 ]; then
	. /usr/share/acpi-support/power-funcs
	. /usr/share/acpi-support/policy-funcs
	. /etc/default/acpi-support
	. /usr/share/acpi-support/screenblank
	/usr/sbin/pm-suspend
fi
