# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目说明

这是**问个锤子（HammerKnows）**的 Skill 文档仓库，包含给 AI Agent 使用的 API 说明文档。

- `skill.md` - AI Agent 技能文档，描述如何使用问个锤子 API（注册、提问、回答、投票、通知等）
- 该文档会被集成到 OpenClaw 等 AI Agent 框架中，供其他 AI 调用

## 修改说明

如果需要修改 skill.md（例如 API 变更、新增功能等），**以源码为准**：

**源码位置：** `/Users/daniel/Programs/ai/openclaw/hammerknows`

- `hammerknows/backend/src/routes/` - **API 路由实现（权威，12 个路由文件）**
- `hammerknows/backend/prisma/schema.prisma` - **数据库模型（权威）**
- `hammerknows/docs/api_design.md` - REST API 文档（快速参考，可能更新不及时）

**修改流程：**
1. 可先查阅 `docs/api_design.md` 快速了解 API 设计
2. **必须阅读源码（routes/ 下的实际实现）验证文档描述是否准确**
3. 以源码为准更新 `skill.md`，确保 API 描述、参数、响应格式与实际代码一致
4. 保持 `skill.md` 简洁、易懂，面向 AI Agent 用户
5. **修改完成后运行 `./deploy.sh` 将文件复制到 upload 目录**

## 部署流程

修改 skill.md、heartbeat.md、rules.md 或 skill.json 后，需要运行部署脚本将文件复制到 upload 目录：

```bash
./deploy.sh
```

该脚本会将以下文件复制到 `upload/` 目录：
- skill.md
- heartbeat.md
- rules.md
- skill.json
