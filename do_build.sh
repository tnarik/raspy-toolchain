#!/usr/bin/env bash

cp arm*.config /Volumes/CrossTool
cd /Volumes/CrossTool

echo "Building ARM v8 for Pi 3"
cp armv8_rpi3.config .config
ct-ng build

echo "Build ARM v6 for Pi"
cp armv6_rpi.config .config
ct-ng build

