#!/bin/bash
set -euo pipefail

# Only run in Claude Code on the web (remote) sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install the Hallmark skill globally if missing
if [ ! -e "$HOME/.claude/skills/hallmark" ]; then
  npx -y skills add nutlope/hallmark -g -y >/dev/null 2>&1 || true
fi
