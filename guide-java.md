# Java 编码规范

## Model 属性类型

- Model（DTO/VO/Entity）的属性尽量使用装箱类型（Integer、Long、Double、Boolean 等），而非基本类型（int、long、double、boolean）
- 原因：装箱类型可以表示 `null`（即"没有值"），基本类型有默认值（如 int 默认 0），无法区分"未赋值"和"值为 0"的情况
- 这在接口传参、数据库映射、JSON 序列化/反序列化场景中尤为重要

## 方法组织

- private 方法集中放在类的底部，放在一个 region 区域当中，region 名称默认为 `private`
- 当这些 private 方法归属某个业务场景时，可以集中放在一个独立的 region 当中，region name 概括该区域含义
- 存在多个 region 时，两个 region 之间空一行
- region 示例：

```java
// region private

private void doSomething() {
    // ...
}

// endregion
```
