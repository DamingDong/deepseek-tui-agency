#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# --- CLI flags ---
DRY_RUN=false
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    --help)    echo "Usage: ./install.sh [--dry-run] [--help]"; exit 0 ;;
  esac
done

if $DRY_RUN; then
  echo "DRY RUN — 不实际安装，只显示将要安装的内容"$'\n'
fi

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
    if $DRY_RUN; then
      ok "  [dry-run] agents/$name"
    else
      rm -rf "$DST_AGENTS/$name" 2>/dev/null
      cp -r "$agent_dir" "$DST_AGENTS/$name"
      ok "  agents/$name"
    fi
  fi
done

# Install skills
echo "安装协同编排 Skills..."
mkdir -p "$DST_SKILLS"
for skill_dir in "$SCRIPT_DIR"/skills/*/; do
  name=$(basename "$skill_dir")
  if [ -d "$skill_dir" ] && [ -f "${skill_dir}SKILL.md" ]; then
    if $DRY_RUN; then
      ok "  [dry-run] skills/$name"
    else
      rm -rf "$DST_SKILLS/$name" 2>/dev/null
      cp -r "$skill_dir" "$DST_SKILLS/$name"
      ok "  skills/$name"
    fi
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