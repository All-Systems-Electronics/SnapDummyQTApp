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
sudo chmod +x ./build.sh
sudo ./build.sh
```
## Install and Run
```
# After the package has built and installed successfully, the following will install and run the app.
sudo snap install --devmode ./dummyapp-snap_0.1_amd64.snap
dummyapp-snap.dummyapp
```
