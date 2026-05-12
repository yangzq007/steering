---
inclusion: fileMatch
fileMatchPattern: "**/*.vue"
---

# Vue 编码规范

- 在实现功能的前提下，尽量减少标签的使用和嵌套
- 单个标签和属性尽量放在一行，不要换行
- 标签的 `v-if` 属性放在最前面
- 标签的 click 或其他事件放在最后面
- 标签的事件方法命名以 `on` 开头，click 事件以 `onClick` 开头
- 如果 mounted 中有需要初始化的数据和逻辑（mounted 中调用的 request 请求除外），方法以 `init` 开头，在 js 的 methods 下添加一个名为 `Init` 的 `#region` 区域，将初始化方法都放到该区域当中
- 如果有事件方法，在 js 的 methods 下添加一个名为 `Action` 的 `#region` 区域，将事件方法都放到该区域当中
- 网络请求方法都以 `request` 开头
- 如果有网络请求方法，在 js 的 methods 下添加一个名为 `Net` 的 `#region` 区域，将网络请求方法都放到该区域当中
- 如果有简短的工具类方法，在 js 的 methods 下添加一个名为 `Util` 的 `#region` 区域，将工具类都放到该区域当中
- #region的顺序为 Init Action Util Net, #region之间留一个空行
- 布尔值类型的命名以 `is` 开头
- 字符串中的逗号和括号尽量使用英文半角符号, 为了美观或对齐可以加一个空格; 如果用户明确要求使用中文符号, 则以用户要求为准
- 网络请求的状态变量命名以 `loading` 结尾(如 `listLoading`, `submitLoading`)
- loading 状态的结束(置为 `false`)统一放在 promise 的 `finally` 中执行
- 仅要求变动代码符合规范，不要主动修改无关旧代码，除非用户明确要求

## region 示例

```js

//#region - region name
//#endregion

```
