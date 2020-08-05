#!/bin/bash

set -euo pipefail

terraform output kubeconfig | base64 -d > kubeconfig.yaml
mv kubeconfig.yaml $KUBECONFIG