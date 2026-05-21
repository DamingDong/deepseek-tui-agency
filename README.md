# deepseek-tui-agency

**deepseek-tui 生产力生态包** — 15 个专业 Agent 角色 + 多 Agent 协同编排，覆盖完整软件产品研发生命周期。

## 安装

```bash
git clone https://github.com/DamingDong/deepseek-tui-agency ~/deepseek-tui-agency
cd ~/deepseek-tui-agency
bash install.sh
```

## 包含内容

### 15 个 Agent 角色

| Agent | 用途 |
|-------|------|
| architect | 架构分析 · 根因诊断 · 技术评审 |
| planner | 任务分解 · 计划制定 |
| executor | 代码实现 |
| code-reviewer | 代码评审 · 安全审查 |
| verifier | 测试验证 · 构建检查 |
| product-manager | 需求分析 · PRD 撰写 |
| project-manager | Sprint 规划 · 进度跟踪 |
| ui-designer | UI 设计 · 组件库 |
| ux-researcher | 用户研究 · 交互设计 |
| backend-developer | API · 数据库 · 后端逻辑 |
| frontend-developer | React/Vue/HTML/CSS |
| mobile-developer | iOS/Android/Flutter |
| mini-program-developer | 微信小程序 |
| ai-engineer | ML · RAG · Agent 开发 |
| devops | CI/CD · 部署 · 监控 |

### 1 个协同编排 Skill

- **agency-orchestrator**：任务路由 · Handoff 协议 · QA 反馈循环 · 进度跟踪

## 使用

加载编排 Skill 后，直接用自然语言指挥团队：

```
加载 agency-orchestrator skill

我要做一个个人记账小程序，需要 PRD、UI 设计、后端 API、前端实现。
```

主 Agent 会自动路由任务给对应的专业角色，跟踪进度，执行 QA 循环。

## 致谢

Agent 角色定义参考：
- [OMC (oh-my-claudecode)](https://github.com/code-yeongyu/oh-my-claudecode) — 严谨的 Agent 六段式框架
- [Agency-Agents](https://github.com/msitarzewski/agency-agents) — 丰富的领域覆盖
- [NEXUS](https://github.com/msitarzewski/agency-agents/tree/main/strategy) — 多 Agent 协同协议

## License

MIT
