if [ -z "$(pidof gnome-shell)" ]; then
  GATEWAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')

  export DISPLAY=$GATEWAY:0
  export LIBGL_ALWAYS_INDIRECT=0
  export PULSE_SERVER=tcp:$GATEWAY
  export XDG_CURRENT_DESKTOP=GNOME
  export XDG_SESSION_TYPE=x11
fi
