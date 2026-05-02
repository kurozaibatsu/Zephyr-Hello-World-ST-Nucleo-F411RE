# Zephyr Hello World ST Nucleo F411RE

## Dev Container
Build the base images using `scripts/docker/build.sh`

### Connect the target board
Run .devcontainer/udev-rule.sh as admin once before starting the dev container to prevent libusb permission errors.

### Issues
Disconnecting the target might change the USB bus ID, which causes the dev container to fail mounting the old device path. Rebuild the dev container in that case.