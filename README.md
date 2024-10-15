# SnapDummyQTApp
Example of creating a snap from a Qt project

The build is tested on Ubuntu 20.04.3.
The output is tested on Ubuntu 20.04.3 and Ubuntu 24.04.
## Prep
```
# Install git and clone repo
sudo apt install git -y
git clone https://github.com/All-Systems-Electronics/SnapDummyQTApp

# Install snap and snapcraft
sudo apt install snap snapcraft -y
```
## Build
```
cd SnapDummyQTApp
sudo chmod +x ./build.sh

# The build script will ask to install multipass if its not already installed.
# Enter "y" to install it. It will install, but then the build will fail.
# Run the build script again, and this time it should succeed.
./build.sh
```
## Install and Run
```
# Install the app
sudo snap install --devmode ./dummyapp-snap_0.1_amd64.snap

# Run the app.
# It will probably display the following error which can be ignored:
# Qt: Session management error: Could not open network socket
dummyapp
```
