# Changelog

## [0.1.1] — 2026-05-21

### Changed

- **architect**: 新增 `mode_detection` 区分空项目/有代码模式，空项目不再超时
- **planner**: protocol 加 step 0 跳过新项目无效代码搜索，reasoning_effort 降为 low
- **orchestrator**: 新增战略层规则（方向讨论不委托 Agent）+ 模型路由表 + Agent 会话管理
- **orchestrator**: 扩展触发词（需求讨论/产品方向/定位/复盘/回顾/PRD/Sprint/架构设计/技术方案）

### Added

- **install.sh**: `--dry-run` 模式
- **uninstall.sh**: 一键卸载

### Fixed

- **install.sh**: 修复 dry-run 时重复打印 ok 信息的 bug

## [0.1.0] — 2026-05-21

### Added

- **15 Agent 角色模板**
  - 分析：architect
  - 规划：planner
  - 产品：product-manager
  - 管理：project-manager
  - 设计：ui-designer, ux-researcher
  - 开发：executor, backend-developer, frontend-developer, mini-program-developer, mobile-developer, ai-engineer
  - 质量：code-reviewer, verifier
  - 交付：devops
- **agency-orchestrator 协同编排 Skill**
  - 15 角色任务路由矩阵
  - Handoff 协议（Metadata/Context/Deliverable/Quality 四段式）
  - QA 反馈循环（最多 3 次重试 + 自动升级）
  - 并行策略（最多 4 个活跃子 Agent）
  - 项目启动五阶段流程
- 一键安装脚本 `install.sh`
- 文档：README、WORKFLOWS、AGENTS_REFERENCE

### Design

- 统一 OMC 六段式 Agent 格式（role/success_criteria/constraints/protocol/output_format/failure_modes）
- OMC 核心 Agent 复用其原始定义
- 领域 Agent 基于 Agency-Agents 内容以 OMC 格式重写
- 协同协议借鉴 NEXUS Handoff + QA Loop
