#!/usr/bin/env bash
set -o xtrace

# Create plug-ins directory if it doesn't exist
plugins_dir=~/Library/Developer/Xcode/Plug-ins/
if [ ! -d "$plugins_dir" ]; then
	mkdir $plugins_dir
fi

# Copy the IDE Plugin to the plug-ins directory
cp -r NASM.ideplugin $plugins_dir

# Create Specifications directory if it doesn't exist
spec_dir=~/Library/Developer/Xcode/Specifications/
if [ ! -d "$spec_dir" ]; then
	mkdir $spec_dir
fi

cp NASM.xclangspec $spec_dir

echo '🎉 Xcode Add-ons installation has completed!\nPlease restart Xcode and click "Load bundle" when an alert shows about NASM.ideplugin.'
