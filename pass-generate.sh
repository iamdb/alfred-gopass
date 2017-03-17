#!/usr/bin/env bash

set -e

QUERY=${1}
PATH=/usr/local/bin:${HOME}/.bin:${PATH}

gopass generate "${QUERY}" -n 20 -c
