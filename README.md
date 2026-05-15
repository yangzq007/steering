# Kiro Steering Rules

一套用于 [Kiro IDE](https://kiro.dev) 的 Steering 规则集合，帮助 AI 助手在编码过程中遵循团队规范，提升代码质量和一致性。

## 📦 包含规则

| 文件 | 触发方式 | 说明 |
|------|---------|------|
| `guide-language.md` | 始终生效 | 语言偏好设置 |
| `guide-mock.md` | 始终生效 | Mock 数据编写规范 |
| `guide-vue2.md` | 匹配 `**/*.vue` 文件时生效 | Vue 编码规范 |
| `guide-check.md` | 手动触发 | 提交前代码检查清单 |
| `guide-summary.md` | 手动触发 | 对话上下文总结与知识沉淀 |
| `guide-init.md` | 手动触发 | 项目 Steering 初始化引导 |

## 🚀 安装方法

### 一键安装（推荐）

无需安装 git，一条命令通过 HTTP 直接下载并安装：

```bash
# 安装到当前项目（默认，仅当前项目生效）
curl -fsSL https://raw.githubusercontent.com/yangzq007/steering/main/install.sh | bash

# 安装到全局（所有项目生效）
curl -fsSL https://raw.githubusercontent.com/yangzq007/steering/main/install.sh | bash -s -- global

# 安装到指定项目
curl -fsSL https://raw.githubusercontent.com/yangzq007/steering/main/install.sh | bash -s -- /path/to/project
```

### 更新规则

规则有更新时，重新执行同一条安装命令即可，脚本会自动对比并只更新有变化的文件。

### 安装后的目录结构

```
~/.kiro/steering/          ← 全局安装位置
# 或
your-project/.kiro/steering/  ← 项目级安装位置
├── guide-language.md
├── guide-mock.md
├── guide-vue2.md
├── guide-check.md
├── guide-summary.md
└── guide-init.md
```

## 📖 规则详情

### 语言偏好 (`guide-language.md`)

控制 AI 助手的回答语言和注释语言偏好。

### Mock 数据规范 (`guide-mock.md`)

规范 Mock 数据的编写方式和标识方法。

### Vue 编码规范 (`guide-vue2.md`)

涵盖 Vue 文件的模板写法、命名规范、代码组织（`#region` 分区）等约定。

### 提交前检查 (`guide-check.md`)

手动触发的代码检查清单，用于提交前排查 Mock 残留、TODO 标记、localhost 引用等问题。

### 对话总结 (`guide-summary.md`)

手动触发，回顾当前对话上下文，将有价值的信息整理并沉淀到对应的 steering 文档中。

### 项目 Steering 初始化 (`guide-init.md`)

手动触发，提供关键字后自动生成四份项目 Steering 文档（product / structure / dev / agreement）。

## ⚙️ Steering 触发方式说明

| 触发方式 | front-matter 配置 | 说明 |
|---------|-------------------|------|
| 始终生效 | `inclusion: always` | 每次对话都会加载 |
| 文件匹配 | `inclusion: fileMatch` + `fileMatchPattern` | 读取匹配文件时加载 |
| 手动触发 | `inclusion: manual` | 在聊天中通过 `#` 引用加载 |

## 📄 License

MIT
