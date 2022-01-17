#!/bin/sh
set -e

echo ${KUBE_CONFIG_DATA} | base64 -d > kubeconfig
export KUBECONFIG="${PWD}/kubeconfig"
chmod 600 ${PWD}/kubeconfig

echo "running entrypoint command(s)"

sh -c " $INPUT_COMMAND"

#echo "::set-output name=response::$response"