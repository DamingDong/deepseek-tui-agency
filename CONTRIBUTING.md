# Contributing

## 添加新 Agent 角色

1. 在 `agents/` 下创建新目录（如 `agents/security-engineer/`）
2. 创建 `agent.toml`，遵循六段式格式：

```toml
[meta]
id = "agent-id"
name = "显示名称"
description = "一句话描述 + 触发条件"
emoji = "🎯"
category = "分类"

[model]
primary = "deepseek-v4-pro"
reasoning_effort = "medium"

[system_prompt]
role = """你是 XX Agent。你负责..."""
success_criteria = """..."""
constraints = """..."""
protocol = """..."""
output_format = """..."""
failure_modes = """..."""
```

3. 在 `docs/AGENTS_REFERENCE.md` 中添加条目
4. 在 `skills/agency-orchestrator/SKILL.md` 的团队角色表和路由规则表中添加对应行

## Agent 设计原则

- **角色单一**：一个 Agent 只做一件事
- **边界清晰**：明确「你负责」和「你不负责」
- **可验证**：success_criteria 必须是可检查的
- **防偏错**：failure_modes 列出常见错误模式
- **输出规范**：output_format 给子 Agent 明确的输出模板

## 提交规范

- `feat: add XXX agent` — 新增 Agent
- `fix: update YYY protocol` — 修复
- `docs: add/update documentation` — 文档
- `chore: maintenance` — 维护
