#!/bin/bash
instance=thecoreci

# Create folders
mkdir -p ./.keys/$instance/concourse-web
mkdir -p ./.keys/$instance/concourse-worker

# Generate private keys
ssh-keygen -t rsa -f ./.keys/$instance/concourse-web/tsa_host_key         -N ''
ssh-keygen -t rsa -f ./.keys/$instance/concourse-web/session_signing_key  -N ''
ssh-keygen -t rsa -f ./.keys/$instance/concourse-worker/worker_key        -N ''

cp                   ./.keys/$instance/concourse-worker/worker_key.pub    ./.keys/$instance/concourse-web/authorized_worker_keys
cp                   ./.keys/$instance/concourse-web/tsa_host_key.pub     ./.keys/$instance/concourse-worker
