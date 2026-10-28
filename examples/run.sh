#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_lr_submit info
PYTHONPATH=src python -m gbt_lr_submit check --payload '{}'
PYTHONPATH=src python -m gbt_lr_submit run   --payload '{}'
