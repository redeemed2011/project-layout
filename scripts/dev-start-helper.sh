#!/usr/bin/env sh

set -e
set -x

# trap "exit" INT TERM ERR
# trap "kill 0" EXIT

. ${PWD:?}/scripts/dev-envs.sh

test -d "cmd/${APP:?}" || `echo "Command '${APP:?}' does not exist! Cannot continue!" && exit 1`

set +e
date
pkill -f "${PWD:?}/./${APP:?}" #&& sleep 1s
set -e

date
dep ensure

# date
# go vet ./cmd/${APP:?}/ ./internal/app/${APP:?}/ ./internal/pkg/**/ ./pkg/**/

# date
# gofmt -s -w ./cmd/${APP:?}/ ./internal/app/${APP:?}/ ./internal/pkg/**/ ./pkg/**/

date
gometalinter ./cmd/${APP:?}/ ./internal/app/${APP:?}/ ./internal/pkg/**/ ./pkg/**/

date
find ./cmd/${APP:?}/ ./internal/app/${APP:?}/ ./internal/pkg/**/ ./pkg/**/ -type d -execdir go test -race {} +

date
go build -race -v -o ${APPBIN:?} ./cmd/${APP:?}/main.go

date
${PWD:?}/./${APP} &
