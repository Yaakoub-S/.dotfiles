# Start MangoWM as a UWSM-managed session from the login TTY.
# The guard prevents accidental startup from an existing graphical session.
if [[ -z ${WAYLAND_DISPLAY:-} ]] && command -v uwsm >/dev/null 2>&1 && uwsm check may-start 1; then
    exec uwsm start -- mango.desktop
fi
