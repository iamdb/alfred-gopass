#!/usr/bin/env bash

set -e

QUERY=${1}
PATH=/usr/local/bin:${HOME}/.bin:${PATH}

# PASS
gopass show "${QUERY}" | sed -n 's/login: \(.*\)/\1/p' | tr -d '\n'
