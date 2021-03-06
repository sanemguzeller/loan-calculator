#!/bin/sh

# A docker image entrypoint for gathering coverage data
set -e
rm -rf build/security
mkdir -p build/security
bandit -r src -f xml -o build/security/security.xml
