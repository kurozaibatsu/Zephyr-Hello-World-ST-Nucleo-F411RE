FROM zephyr-arm:latest

ARG USERNAME=developer
ARG DEBIAN_FRONTEND=noninteractive
USER root

RUN <<EOT
    # Install sudo
    set -e
    apt-get -y update
    apt-get -y install --no-install-recommends \
    sudo
    echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${USERNAME}
    chmod 0440 /etc/sudoers.d/${USERNAME}
EOT

USER ${USERNAME}
ENV LC_ALL=C