#!/bin/bash
# Copy Override files before you build 
#
echo "==========================================================================="
echo "Copy override files"
echo "==========================================================================="
cd override

# Copy modify files from the folders
#
cp -rf edk2 ..
cp -rf edk2-ampere-tools ..


