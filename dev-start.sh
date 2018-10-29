#!/usr/bin/env sh

set -e
set -x


. scripts/dev-envs.sh

# Run the project every time a file changes.
watcher -depth 6 scripts/./dev-start-helper.sh
