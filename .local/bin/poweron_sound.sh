#!/usr/bin/env bash
# выдаёт звук при включении, чтоб если багует pulseaudio,
# то чтоб не баговал
sleep 3s
pactl set-sink-mute @DEFAULT_SINK@ 0
pactl set-sink-volume @DEFAULT_SINK@ 60%
sleep 5s
mplayer ~/system/sounds/vinda.mp3
volumeicon &
