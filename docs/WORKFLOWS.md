# Workflow 参考

deepseek-tui-agency 提供三种工作流模式，从轻量到完整覆盖不同项目阶段。

## 模式 1：Feature Cycle（功能开发循环）

适用：单个功能从需求到上线。

```
PM 需求分析 ──→ Architect 技术方案 ──→ Executor 实现
                                          │
                                    code-reviewer 评审
                                          │
                                    verifier 验证
                                          │
                          ┌── PASS ──→ devops 部署
                          │
                          └── FAIL ──→ executor 修复（最多 3 次）
                                          │
                                    仍失败 → architect 根因分析
```

### 使用方法

```
加载 agency-orchestrator skill

我需要开发一个用户登录功能。需求：手机号+验证码登录。
```

主 Agent 会自动依次激活 product-manager → architect → executor → code-reviewer → verifier → devops。

---

## 模式 2：PRD to Launch（完整产品开发）

适用：从零开始的新项目。

```
Phase 0: PM 产品定义 ──→ PRD
Phase 1: Architect 技术架构 + UI Designer 设计系统（并行）
Phase 2: Planner 任务分解 ──→ Sprint 计划
Phase 3: 开发循环（Feature Cycle 批量执行）
Phase 4: devops 部署
```

### 使用方法

```
加载 agency-orchestrator skill

我要做一个个人记账小程序。
目标用户：个人和小家庭
核心功能：记支出、分类统计、月度预算
```

主 Agent 会按 NEXUS 风格的五阶段流程推进，每阶段完成更新 checklist 并向你汇报。

---

## 模式 3：单一 Agent 激活

适用：独立任务，不需要协同。

```
加载 agency-orchestrator skill

审查 crates/tui/src/client.rs 的并发安全问题。
```

主 Agent 路由到 architect，完成任务后返回。

---

## QA 反馈循环详解

```
executor 实现
    │
    ▼
code-reviewer 评审
    │
    ├── APPROVE ──→ verifier 验证 ──→ devops 部署
    │
    └── REQUEST CHANGES（附 file:line + 修复建议）
            │
            ▼
        executor 修复（仅修指定问题，不引入新变更）
            │
            ▼
        code-reviewer 重新评审
            │
            ├── PASS ──→ 继续
            └── FAIL（第 N 次，N ≤ 3）
                    │
                    ├── N < 3 ──→ 回到 executor
                    └── N = 3 ──→ 升级给 architect 分析根因
```

### QA Loop 示例

```
# 第 1 轮
code-reviewer: [🔴] server.ts:42 — SQL 注入风险。修复：参数化查询。
executor: 已修复，使用 $1 占位符。

# 第 2 轮
code-reviewer: APPROVE ✅
verifier: 所有测试通过。PASS ✅
```

---

## 角色激活速查

| 你说的话 | 自动激活 |
|----------|---------|
| "我要做一个..." / "需求是什么" | product-manager |
| "排期" / "Sprint" / "进度" | project-manager |
| "架构" / "设计模式" / "技术选型" | architect |
| "写代码" / "实现" / "开发" | executor（通用）/ 或领域 developer |
| "审查" / "review" / "检查代码" | code-reviewer |
| "测试" / "构建" / "验证" | verifier |
| "部署" / "上线" / "CI/CD" | devops |
| "设计界面" / "UI" / "组件" | ui-designer |
| "用户研究" / "可用性" / "体验" | ux-researcher |
| "后端" / "API" / "数据库" | backend-developer |
| "前端" / "页面" / "React" | frontend-developer |
| "小程序" / "微信" | mini-program-developer |
| "iOS" / "Android" / "移动端" | mobile-developer |
| "AI" / "模型" / "RAG" | ai-engineer |
