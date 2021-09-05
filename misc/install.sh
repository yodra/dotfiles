#!/usr/bin/env bash

set -eo pipefail

# Homebrew symlinks
ln -fs /opt/homebrew/bin/pinentry-mac /usr/local/bin/pinentry-mac
