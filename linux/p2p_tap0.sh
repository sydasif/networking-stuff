#!/bin/sh
sudo ip tuntap add name tap0 mode tap
sudo ip addr add 192.0.2.2/30 dev tap0
sudo ip link set dev tap0 up
ip addr | grep tap0
