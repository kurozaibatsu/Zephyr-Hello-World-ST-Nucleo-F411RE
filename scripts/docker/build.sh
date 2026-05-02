#!/usr/bin/env bash

script_path=$(dirname "$(realpath -s "$0")")

cd "$script_path"
docker build -t zephyr-base -f ./Dockerfile.zephyr-base .
docker build -t zephyr-arm -f ./Dockerfile.zephyr-arm .