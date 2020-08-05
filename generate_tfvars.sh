#!/bin/bash

TF_VARS_CONTENT=$(cat variables.auto.tfvars)

if [ $? == 0 ]; then
  echo "Terraform variables files found!"
  echo "Using the following configuration:"
  echo "$TF_VARS_CONTENT"
  exit 0
fi

set -euo pipefail

echo 'Welcome! Please enter some information:'
echo '--------------------------------------'
read -p 'Token (required): ' LINODE_TOKEN

if test -z "$LINODE_TOKEN" 
then
  echo "No Token was provided!"
  exit 1
fi

echo 'token = ''"'$LINODE_TOKEN'"' > variables.auto.tfvars
cat >> variables.auto.tfvars << EOT
k8s_version = "1.17"
region = "us-west"
pools = [
  {
    type : "g6-standard-1"
    count : 1
  }
]
EOT