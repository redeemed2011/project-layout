#!/usr/bin/env sh

set -e
set -x


. scripts/dev-envs.sh

# Run the project every time a file changes.
# watcher -depth 6 scripts/./dev-start-helper.sh
nodemon \
  --watch . \
  --ext '.go' \
  --ignore 'metro' \
  --verbose \
  --exec ${SHELL} scripts/./dev-start-helper.sh
