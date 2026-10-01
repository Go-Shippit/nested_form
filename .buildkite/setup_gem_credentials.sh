#!/bin/bash

set -euo pipefail

mkdir -p ~/.gem
touch ~/.gem/credentials

echo -e "---\n:github: Bearer $GEM_CREDENTIALS" > ~/.gem/credentials

chmod 0600 ~/.gem/credentials
