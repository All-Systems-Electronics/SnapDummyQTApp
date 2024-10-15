#!/bin/bash

# Build dummy application
rm -r ./build
mkdir build
cd build
qmake ../DummyApp/DummyApp.pro
make
cd ../

# Copy binary into release folder
rm -r ./release
mkdir -p ./release/bin
cp ./build/DummyApp ./release/bin/

# Build and install snap
snapcraft
sudo snap install --devmode ./dummyapp-snap_0.1_amd64.snap

# If we got this far, we can run the snap
dummyapp-snap.dummyapp
