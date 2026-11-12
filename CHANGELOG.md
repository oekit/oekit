# Changelog — oekit/oekit

oekit 组织**兼容矩阵快照（BOM）**仓：本仓自身即模块 `github.com/oekit/oekit`，
声明「当前互相兼容的一组模块版本」。各模块独立 SemVer，数字本身不带兼容信息。

## [v0.6.0] — 2026-11-12

### chore: BOM 快照重生成——11-11～11-12 发版潮入快照（36 模块，const Version v0.6.0）

本版重生成兼容快照（`gen_matrix_go.py`，各仓**远端** tag 口径，与站点 versions.json 同源）：

- 根模块：pkg v0.44.0 → **v0.46.0**（v0.45.0 distlock 契约单源 + errors.Errorf 删除、
  v0.46.0 reflectx 深拷贝单源；子包口径 31 → 33 合 1）、concurrency → v0.34.1、
  logx → v0.10.0（BaseLogger.Level 改 AtomicLevel，BREAKING）、kitx → v0.9.0（jwt 无 exp
  缺省拒收，BREAKING）、core → v0.15.0（transport/hertzbridge 单源）、registry → v0.5.15、
  etcdx → v0.3.1、gormx → v0.11.14、httpx → v0.11.0（删 WithDebug 占位选项，BREAKING）、
  nns → v0.8.0、timertask → v0.5.1（local.Clock 加 NewTimer，BREAKING）、
  bootstrap → v0.7.8、workflow → v0.11.1、metrics → v0.3.0、network → v0.10.2、
  k8s → v0.2.4、tracing → v0.4.1、data → v0.21.1；
- 嵌套单元：bootstrap/nacos v0.3.24、bootstrap/obs v0.2.26、logx/{hlog,kitexlog} v0.1.12、
  logx/{sink,hertzlog} v0.1.2、registry/nacos v0.1.14、registry/nacosimpl v0.2.0
  （删 GetPodIP 纯转发，BREAKING）、timertask/redis v0.2.20；
- breakingIndex 随 `gen_versions.py` 补收 26 条 CHANGELOG 破坏性变更（pkg/logx/kitx/
  registry/gormx/redisx/etcdx/httpx/timertask/k8s/nns 等），快照内的 Breaking 明细同步刷新。

## [v0.2.12] — 2026-11-09

### chore: BOM 重生成——11-08 并发发版潮地板收口（37 发版单元）

本版重生成兼容快照，覆盖 11-08 之后的并发发版潮：pkg v0.41.0、concurrency v0.31.0、
logx v0.8.12、core v0.13.5、kitx v0.5.0、metrics v0.2.0、registry v0.5.11、
data v0.20.9、gormx v0.11.7、redisx v0.12.0、etcdx v0.2.9、httpx v0.8.16、
network v0.7.14、timertask v0.2.14、middleware v0.14.1、k8s v0.2.0、nns v0.5.13、
nns-endpoint v0.3.0、bootstrap v0.7.0、hertz v0.11.0、workflow v0.3.10、
tracing v0.3.9。

- **依赖地板变更**：本版重生成 BOM 快照（37 个发版单元）

## [v0.2.11] — 2026-11-08

### chore: BOM 重生成——registry v0.5.9 收口（v0.5.8 干净重发的终态地板）

## [v0.2.10] — 2026-11-08

### chore: BOM 重生成——今日发版潮地板收口（pkg v0.38.0 / concurrency v0.29.0 / logx v0.8.11 / core v0.13.4 / gormx v0.11.7 / httpx v0.8.16 / network v0.7.13 / hertz v0.10.5 / middleware v0.13.14 / data v0.20.6 / registry v0.5.8 / metrics v0.1.16 / tracing v0.3.7 等）

第三轮 issue 清零（98 单）+ 级联地板对齐轮后的兼容快照刷新。

## [v0.2.9] — 2026-11-08

- **依赖地板变更**：本版重生成 BOM 快照（0 个发版单元）
  

## [v0.2.7] — 2026-11-08

- **新增发版单元**：kitex/cmd/thrift2openapi v0.1.0
- **依赖地板变更**（30 个模块）：bootstrap v0.6.14 → v0.6.15；bootstrap/nacos v0.3.17 → v0.3.19；bootstrap/obs v0.2.19 → v0.2.21；concurrency v0.27.0 → v0.28.3；core v0.13.0 → v0.13.2；data v0.20.2 → v0.20.4；etcdx v0.2.5 → v0.2.6；gormx v0.11.2 → v0.11.5；hertz v0.10.0 → v0.10.3；httpx v0.8.11 → v0.8.14；k8s v0.1.7 → v0.1.9；kitex v0.7.10 → v0.7.13；kitex-examples v0.1.26 → v0.1.27；kitex/observability/tracing/instrumentation/kitexotel v0.7.11 → v0.7.13；kitx v0.4.1 → v0.4.2；logx v0.8.4 → v0.8.8；metrics v0.1.13 → v0.1.14；middleware v0.13.12 → v0.13.14；network v0.7.9 → v0.7.11；nns v0.5.9 → v0.5.10；nns-endpoint v0.2.13 → v0.2.14；pkg v0.35.2 → v0.37.3；redisx v0.11.1 → v0.11.3；registry v0.5.4 → v0.5.5；registry/nacos v0.1.7 → v0.1.9；registry/nacosimpl v0.1.7 → v0.1.9；timertask v0.2.11 → v0.2.12；timertask/redis v0.2.13 → v0.2.15；tracing v0.3.4 → v0.3.5；workflow v0.3.7 → v0.3.8

## [v0.2.6] — 2026-11-07

- **依赖地板变更**（1 个模块）：pkg v0.35.1 → v0.35.2

## [v0.2.5] — 2026-11-07

- **依赖地板变更**（1 个模块）：hertz v0.9.6 → v0.10.0

## [v0.2.4] — 2026-11-07

- **依赖地板变更**（1 个模块）：core v0.12.2 → v0.13.0

## [v0.2.3] — 2026-11-07

- **依赖地板变更**（31 个模块）：bootstrap v0.6.8 → v0.6.14；bootstrap/nacos v0.3.10 → v0.3.17；bootstrap/obs v0.2.14 → v0.2.19；concurrency v0.23.4 → v0.27.0；core v0.12.1 → v0.12.2；data v0.20.0 → v0.20.2；etcdx v0.2.3 → v0.2.5；gormx v0.8.0 → v0.11.2；hertz v0.9.1 → v0.9.6；httpx v0.8.8 → v0.8.11；k8s v0.1.4 → v0.1.7；kitex v0.7.6 → v0.7.10；kitex/observability/tracing/instrumentation/kitexotel v0.7.7 → v0.7.11；kitx v0.3.4 → v0.4.1；logx v0.8.2 → v0.8.4；logx/hlog v0.1.8 → v0.1.9；logx/kitexlog v0.1.8 → v0.1.9；metrics v0.1.11 → v0.1.13；middleware v0.13.8 → v0.13.12；network v0.7.5 → v0.7.9；nns v0.5.7 → v0.5.9；nns-endpoint v0.2.10 → v0.2.13；pkg v0.33.0 → v0.35.1；redisx v0.11.0 → v0.11.1；registry v0.5.3 → v0.5.4；registry/nacos v0.1.3 → v0.1.7；registry/nacosimpl v0.1.4 → v0.1.7；timertask v0.2.7 → v0.2.11；timertask/redis v0.2.7 → v0.2.13；tracing v0.3.2 → v0.3.4；workflow v0.3.4 → v0.3.7

## [v0.2.2] — 2026-11-04

- **依赖地板变更**（2 个模块）：data v0.19.9 → v0.20.0；hertz v0.9.0 → v0.9.1

## [v0.2.1] — 2026-11-04

- **依赖地板变更**（1 个模块）：gormx v0.7.1 → v0.8.0
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
