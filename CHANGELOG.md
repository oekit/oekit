# Changelog — oekit/oekit

oekit 组织**兼容矩阵快照（BOM）**仓：本仓自身即模块 `github.com/oekit/oekit`，
声明「当前互相兼容的一组模块版本」。各模块独立 SemVer，数字本身不带兼容信息。

## [v0.2.0] — 2026-11-03
- **BOM 快照带 breaking 索引**（BREAKING）：从「只钉版本」升级为「钉版本 + 声明每个模块自己的破坏性变更」

  **为什么 breaking**：矩阵里有 **108 条** breaking 记录（19 个仓），而本仓产物 `matrix.go`
  里 breaking 信息**为零** ⇒ `go get github.com/oekit/oekit@latest` 的消费方
  **无法知道这组版本里哪些模块 breaking 了** ⇒ 矩阵对下游说谎。
  现在每个模块自带 `Breaking []Breaking`（嵌套模块只归自己，不再折叠进宿主），
  并新增三个查询 API：

  - `BreakingOf(module string) []Breaking` —— 该模块自己的破坏性变更（未收录返回 nil）
  - `HasBreaking(module string) bool` —— 该模块有没有破坏性变更
  - `BreakingModules() []string` —— 有破坏性变更的模块路径（矩阵序）

- **导出面降级为不可变**（BREAKING）：`Matrix` / `Versions` 由**导出的可变全局**改为**返回副本的函数**

  **为什么是 breaking**：旧 `Versions` 是包级导出 map、`VersionOf` 直接读它无锁 ⇒ 实测
  `go run -race` 报 **DATA RACE**（`runtime.mapaccess2_faststr()` vs `oekit.VersionOf`）
  ⇒ 消费方并发读写会 `fatal error: concurrent map read and map write`（**不可 recover，直接崩进程**）；
  `Matrix` 同样可被消费方 `append` / 改写元素。
  ⇒ 现在只暴露 `Matrix()` / `Versions()`（返回副本）与 `VersionOf`（不变），并发读干净。

  **迁移位**：

  | 旧写法 | 新写法 |
  |---|---|
  | `oekit.Versions["github.com/oekit/pkg"]` | `oekit.Versions()["github.com/oekit/pkg"]` |
  | `len(oekit.Matrix)` | `len(oekit.Matrix())` |
  | `range oekit.Matrix` | `range oekit.Matrix()` |
  | `oekit.Module{"p","r","v","1.24"}` | 改用**键名字面量**（结构体新增了 `Breaking` 字段） |
  | `oekit.Versions["x"] = "y"`（写） | 不再可能（这正是本次降级的目的） |

- **fix**：嵌套模块的 Go 地板取错文件 ⇒ 对外报错的 go 地板比真实**低报**
  （`git show obs/v0.2.14:go.mod` 取到的是宿主仓根的 go.mod，不是 `obs/go.mod`）
  ⇒ `bootstrap/obs` 与 `timertask/redis` 的 `Go` 由 `1.24.0` 修正为 `1.26.0`。

  **依据**：全部为实测复现（下游探针 + `go run -race` 真实输出 + 变异自证）。

## [v0.1.81] — 2026-11-03
- BOM 推荐组合更新（v0.1.81，35 模块）：hertz v0.8.14。

## [v0.1.80] — 2026-11-03
- BOM 推荐组合更新（v0.1.80，35 模块）：kitex v0.7.6。

## [v0.1.79] — 2026-11-03
- BOM 推荐组合更新（v0.1.79，35 模块）：gormx v0.7.1、hertz v0.8.13。
