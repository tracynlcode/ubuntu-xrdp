#!/bin/bash

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvf ngrok-v3-stable-linux-amd64.tgz
./ngrok authtoken 2mzxh7XChE48imIg6tpDg0BOWd6_81kUjWiBjcAdAgNWGmihe
nohup ./ngrok tcp 22 &>/dev/null &
