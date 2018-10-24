#!/usr/bin/env bash

APP=exampleapp
export APP

# Run the project every time a file changes.
# task dev --watch
watcher -depth 12 task dev
# watcher gometalinter ./... && go run -race ./cmd/${APP}/main.go
