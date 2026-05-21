#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DST_AGENTS="${HOME}/.deepseek/agents"
DST_SKILLS="${HOME}/.deepseek/skills"

GREEN='\033[0;32m'; BOLD='\033[1m'; RESET='\033[0m'
ok() { printf "${GREEN}[OK]${RESET}  %s\n" "$*"; }

echo -e "${BOLD}deepseek-tui-agency — 安装${RESET}\n"

# Install agents
echo "安装 Agent 模板..."
mkdir -p "$DST_AGENTS"
for agent_dir in "$SCRIPT_DIR"/agents/*/; do
  name=$(basename "$agent_dir")
  if [ -d "$agent_dir" ] && [ -f "${agent_dir}agent.toml" ]; then
    cp -r "$agent_dir" "$DST_AGENTS/"
    ok "  agents/$name"
  fi
done

# Install skills
echo "安装协同编排 Skills..."
mkdir -p "$DST_SKILLS"
for skill_dir in "$SCRIPT_DIR"/skills/*/; do
  name=$(basename "$skill_dir")
  if [ -d "$skill_dir" ] && [ -f "${skill_dir}SKILL.md" ]; then
    cp -r "$skill_dir" "$DST_SKILLS/"
    ok "  skills/$name"
  fi
done

echo ""
echo -e "${BOLD}安装完成！${RESET}"
echo "Agent 模板已安装到 ${DST_AGENTS}"
echo "协同编排 Skill 已安装到 ${DST_SKILLS}"
echo ""
echo "使用方法："
echo "  在 deepseek-tui 中输入:"
echo "  '加载 agency-orchestrator skill，我要开始一个新项目'"
