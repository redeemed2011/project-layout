#!/usr/bin/env bash

# Install nvm.
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Install node.js.
nvm install --lts

# Install the task runner.
npm install -g nodemon

# Install the package manager.
go get -u github.com/golang/dep/cmd/dep

# Ensure all the packages are installed.
dep ensure

# Install the meta linter.
cd "${GOPATH}" && \
  curl -L https://git.io/vp6lP | sh
cd - || exit 1
