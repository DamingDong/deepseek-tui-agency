#!/usr/bin/env bash
set -euo pipefail

AGENTS="${HOME}/.deepseek/agents"
SKILLS="${HOME}/.deepseek/skills"

AGENT_IDS=(
  architect planner executor code-reviewer verifier
  product-manager project-manager ui-designer ux-researcher
  backend-developer frontend-developer mini-program-developer
  mobile-developer ai-engineer devops
)

echo "卸载 deepseek-tui-agency..."

for id in "${AGENT_IDS[@]}"; do
  if [ -d "$AGENTS/$id" ]; then
    rm -rf "$AGENTS/$id"
    echo "  已删除 agents/$id"
  fi
done

if [ -d "$SKILLS/agency-orchestrator" ]; then
  rm -rf "$SKILLS/agency-orchestrator"
  echo "  已删除 skills/agency-orchestrator"
fi

echo "卸载完成"
