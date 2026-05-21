# Agent 角色速查表

## 团队全貌

```
                         📊 project-manager
                              │
    ┌─────────────────────────┼─────────────────────────┐
    │                         │                         │
🧭 product-manager      🏗️ architect           🎨 ui-designer + 🔍 ux-researcher
    │                         │                         │
    ▼                         ▼                         ▼
┌───────────────────────────────────────────────────────────┐
│                      开发团队                               │
│  💻 backend-dev  🖥️ frontend-dev  📱 mobile-dev          │
│  🔧 mini-program-dev  🤖 ai-engineer                      │
└───────────────────────────────────────────────────────────┘
                              │
                    ┌─────────┴─────────┐
                    │                   │
              👁️ code-reviewer    ✅ verifier
                    │                   │
                    └─────────┬─────────┘
                              │
                         🚀 devops
```

## 角色详情

### 产品 & 管理

| Agent | 触发 | 核心输出 |
|-------|------|---------|
| 🧭 product-manager | 需求、PRD、产品方向 | PRD（问题陈述/成功指标/用户故事/验收标准） |
| 📊 project-manager | Sprint、排期、进度 | Sprint 计划表、风险矩阵 |

### 分析 & 规划

| Agent | 触发 | 核心输出 |
|-------|------|---------|
| 🏗️ architect | 架构、技术方案、Bug 根因 | 分析报告（摘要/根因/建议+权衡/参考） |
| 📐 planner | 任务分解、计划 | 计划摘要（3-6 步 + 验收标准） |

### 设计

| Agent | 触发 | 核心输出 |
|-------|------|---------|
| 🎨 ui-designer | UI、界面、组件 | 设计系统（Token/组件库/页面规格） |
| 🔍 ux-researcher | 交互、体验、可用性 | 研究报告（用户画像/旅程地图/建议） |

### 开发

| Agent | 触发 | 覆盖领域 |
|-------|------|---------|
| ⚡ executor | 通用编码实现 | 默认开发者，匹配项目风格 |
| 💻 backend-developer | 后端/API/数据库 | REST/GraphQL、SQL/NoSQL、认证授权 |
| 🖥️ frontend-developer | 前端/页面/组件 | React/Vue、CSS/Tailwind、Core Web Vitals |
| 📱 mobile-developer | iOS/Android/移动端 | Swift/Kotlin/Flutter/React Native |
| 🔧 mini-program-developer | 小程序/微信 | WXML/WXSS、微信支付、分包优化 |
| 🤖 ai-engineer | AI/ML/RAG | 模型开发、向量检索、MLOps |

### 质量

| Agent | 触发 | 核心输出 |
|-------|------|---------|
| 👁️ code-reviewer | 代码评审、PR 审查 | 评审报告（🔴/🟡/💭 分级 + 修复建议） |
| ✅ verifier | 测试、验证、构建 | 验证报告（PASS/FAIL + 测试证据） |
| 🔒 security-reviewer | 安全/隐私/合规 | 安全审查报告（🔴/🟡/💭 + 攻击场景 + 修复方案） |

### 交付

| Agent | 触发 | 核心输出 |
|-------|------|---------|
| 🚀 devops | 部署、CI/CD、运维 | CI/CD 配置、基础设施、监控方案 |

## 模型配置

| Agent | 模型 | reasoning |
|-------|------|-----------|
| architect | deepseek-v4-pro | high |
| ai-engineer | deepseek-v4-pro | high |
| product-manager | deepseek-v4-pro | medium |
| code-reviewer | deepseek-v4-pro | medium |
| executor | deepseek-v4-pro | medium |
| planner | deepseek-v4-pro | medium |
| ui-designer | deepseek-v4-pro | medium |
| ux-researcher | deepseek-v4-pro | medium |
| backend-developer | deepseek-v4-pro | medium |
| frontend-developer | deepseek-v4-pro | medium |
| mobile-developer | deepseek-v4-pro | medium |
| mini-program-developer | deepseek-v4-pro | medium |
| security-reviewer | deepseek-v4-pro | high |
| verifier | deepseek-v4-pro | medium |
| project-manager | deepseek-v4-pro | low |
| devops | deepseek-v4-pro | low |
