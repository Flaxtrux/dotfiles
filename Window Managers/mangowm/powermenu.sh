#!/bin/sh
choice=$(printf "Apagar\nReiniciar\nBloquear\nSalir" | wmenu -l 4 -p "Power:")
case "$choice" in
  "Apagar")    systemctl poweroff ;;
  "Reiniciar") systemctl reboot ;;
  "Bloquear")  swaylock -c 000000 ;;
  "Salir")     mmsg quit ;;
esac
