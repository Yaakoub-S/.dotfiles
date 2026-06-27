#!/bin/sh

update_separator() {
    COUNT=$(dbus-send --print-reply --dest=org.kde.StatusNotifierWatcher \
      /StatusNotifierWatcher \
      org.freedesktop.DBus.Properties.Get \
      string:"org.kde.StatusNotifierWatcher" \
      string:"RegisteredStatusNotifierItems" 2>/dev/null | grep -c "string")

    if [ "$COUNT" -gt 0 ]; then
        echo "::"
    else
        echo ""
    fi
}

update_separator

dbus-monitor --user "type='signal',interface='org.kde.StatusNotifierWatcher'" 2>/dev/null | \
while read -r line; do
    if echo "$line" | grep -Eq "StatusNotifierItem(Register|Unregister)"; then
        update_separator
    fi
done
