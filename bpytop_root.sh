#!/bin/bash

# === Full Script: bpytop_polkit.sh ===

# Check if xfce4-terminal is installed
if ! command -v xfce4-terminal &> /dev/null; then
    echo "xfce4-terminal is not installed. Please install it first."
    exit 1
fi

# Check if bpytop is installed
if ! command -v bpytop &> /dev/null; then
    echo "bpytop is not installed. Please install it first."
    exit 1
fi

# Use pkexec to launch xfce4-terminal with bpytop
pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY bash -c "xfce4-terminal -x bpytop"

