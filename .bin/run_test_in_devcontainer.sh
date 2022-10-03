#!/bin/bash

set -xeuo pipefail

run() {
    local DIR="$1"

    devcontainer run-user-commands --log-level=trace --workspace-folder="$DIR"
    devcontainer exec --log-level=trace --workspace-folder="$DIR" bash -c 'echo $UID:$GID; whoami'
}

run "$1"
