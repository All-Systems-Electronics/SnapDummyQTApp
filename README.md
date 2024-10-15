# SnapDummyQTApp
Example of creating a snap from a Qt project
## Prep
```
# Install git and clone repo
sudo apt install git
git clone https://github.com/All-Systems-Electronics/SnapDummyQTApp

# Install snap and snapcraft
sudo apt install snap snapcraft
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
