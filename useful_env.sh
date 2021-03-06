#!/bin/sh
# Some useful environment variables to source
PROJECT=kubeflow-rl
NAMESPACE=rl
JUPYTER_SERVICE=jupyter-hub-esp
JUPYTER_INGRESS=${JUPYTER_SERVICE}
ENDPOINT=jupyterhub

# Name of the ksonnet environment
ENV=gke

# Name of the core Kubeflow component
CORE_NAME=kubeflow-core
