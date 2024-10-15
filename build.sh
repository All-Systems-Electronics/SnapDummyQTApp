#!/bin/bash

#if [ "$EUID" -ne 0 ]
#  then echo "Please run as root"
#  exit
#fi

# Build dummy application
rm -rf ./build
mkdir build
cd build
qmake ../DummyApp/DummyApp.pro
make
cd ../

# Copy binary into release folder
rm -rf ./release
mkdir -p ./release/bin
cp ./build/DummyApp ./release/bin/

# Clean the build so that we are starting afresh
snapcraft clean

# Build the snap
snapcraft

# If we got this far, we can install and run the app
# sudo snap install --devmode ./dummyapp-snap_0.1_amd64.snap
# dummyapp-snap.dummyapp
