# Kiro Steering Rules

一套用于 [Kiro IDE](https://kiro.dev) 的 Steering 规则集合，帮助 AI 助手在编码过程中遵循团队规范，提升代码质量和一致性。

## 📦 包含规则

| 文件 | 触发方式 | 说明 |
|------|---------|------|
| `guide-language.md` | 始终生效 | 语言偏好设置 |
| `guide-mock.md` | 始终生效 | Mock 数据编写规范 |
| `guide-vue2.md` | 匹配 `**/*.vue` 文件时生效 | Vue 编码规范 |
| `guide-check.md` | 手动触发 | 提交前代码检查清单 |

## 🚀 使用方法

1. 将本仓库中的 `.md` 文件复制到你项目的 `.kiro/steering/` 目录下
2. 在 Kiro IDE 中打开项目，规则将自动加载

```
your-project/
├── .kiro/
│   └── steering/
│       ├── guide-language.md
│       ├── guide-mock.md
│       ├── guide-vue2.md
│       └── guide-check.md
└── src/
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

## ⚙️ Steering 触发方式说明

| 触发方式 | front-matter 配置 | 说明 |
|---------|-------------------|------|
| 始终生效 | `inclusion: always` | 每次对话都会加载 |
| 文件匹配 | `inclusion: fileMatch` + `fileMatchPattern` | 读取匹配文件时加载 |
| 手动触发 | `inclusion: manual` | 在聊天中通过 `#` 引用加载 |

## 📄 License

MIT
