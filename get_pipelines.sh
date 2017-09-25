#!/bin/bash
[[ ! -e concourse_pipelines ]] && mkdir concourse_pipelines

if [[ ! -e concourse_pipelines/thecoreci ]]; then
    git clone git@github.com:uZer/ansible-role-concourse.git
else
    echo "Nothing to do."
fi
