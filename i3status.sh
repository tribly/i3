#!/bin/sh

i3status --config ~/.i3status-left.conf | while :
do
    read line
    playing=$(ncmpcpp --now-playing "{%t} - {%a}")
    echo "$playing" || exit 1
done
