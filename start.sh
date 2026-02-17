#!/usr/bin/env bash
set -e

# Fail fast if token is missing
if [[ -z "${BOT_TOKEN}" ]]; then
  echo "ERROR: BOT_TOKEN is not set."
  echo "Set BOT_TOKEN in host environment variables (recommended)."
fi

exec python bot.py
