#!/bin/bash

speedtest-cli --simple > ~/blood-and-milk/.speeds 2>&1 &

gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/blood-and-milk/wall.png"

sleep 7

conky -c ~/blood-and-milk/connections_graph.conf &
conky -c ~/blood-and-milk/disk_graph.conf &
conky -c ~/blood-and-milk/cpu_histograme.conf &

sleep 3

conky -c ~/blood-and-milk/fs_disk.conf &
conky -c ~/blood-and-milk/memory_graph.conf &

sleep 3

conky -c ~/blood-and-milk/temperature_rings.conf &

sleep 3

conky -c ~/blood-and-milk/gmail.conf &
conky -c ~/blood-and-milk/cpu_rings.conf &
conky -c ~/blood-and-milk/notes.conf &

sleep 3

conky -c ~/blood-and-milk/connections_list.conf &
conky -c ~/blood-and-milk/processes_list.conf &

sleep 10

conky -c ~/blood-and-milk/globus_gif &
