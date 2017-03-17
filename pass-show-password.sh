#!/usr/bin/env bash

set -e

QUERY=${1}
PATH=/usr/local/bin:${HOME}/.bin:${PATH}

# PASS
gopass show ${QUERY} | head -n +1 | tr -d '\n'
