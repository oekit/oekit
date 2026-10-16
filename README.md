# oekit

> **O**pen **E**asy **Kit** — 开源 · 易用 · 工具集合

![modules](https://img.shields.io/badge/modules-21-4C6EF5) ![Go](https://img.shields.io/badge/Go-1.24%2B-00ADD8?logo=go&logoColor=white) ![CI](https://img.shields.io/badge/CI-Lint%20%2B%20Test-845EF7) ![License](https://img.shields.io/badge/License-MIT-3DA639)

oekit 是一套按能力分层的独立 Go 模块矩阵：**21 个活跃模块仓库，每仓独立发版（SemVer）、独立 CI、按需取用**。
从 `errors` / `timex` 这类零依赖微包，到 Hertz / Kitex 生态适配器，全部遵循同一套接口分层与开发规范。

- 项目主页：**https://oekit.github.io/**
- 组织：https://github.com/orgs/oekit/repositories
- 协议：MIT

## 架构总览

依赖严格自底向上：**上层依赖下层，全矩阵无环**。

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="docs/assets/architecture-dark.svg">
    <img src="docs/assets/architecture.svg" alt="oekit 模块矩阵 · 架构总览">
  </picture>
</p>

| 能力层 | 模块 |
|---|---|
| 应用引导 · 框架生态 | [bootstrap](https://github.com/oekit/bootstrap) · [hertz](https://github.com/oekit/hertz) · [kitex](https://github.com/oekit/kitex) · [middleware](https://github.com/oekit/middleware) · [workflow](https://github.com/oekit/workflow) · [kitex-examples](https://github.com/oekit/kitex-examples) |
| 通信 · 服务治理 | [httpx](https://github.com/oekit/httpx) · [nns-endpoint](https://github.com/oekit/nns-endpoint) · [network](https://github.com/oekit/network) · [nns](https://github.com/oekit/nns) · [registry](https://github.com/oekit/registry) |
| 数据访问 | [gormx](https://github.com/oekit/gormx) · [redisx](https://github.com/oekit/redisx) · [data](https://github.com/oekit/data) · [timertask](https://github.com/oekit/timertask) |
| 可观测性 | [logx](https://github.com/oekit/logx) · [tracing](https://github.com/oekit/tracing) · [metrics](https://github.com/oekit/metrics) |
| 基础库 | [pkg](https://github.com/oekit/pkg)（21 合 1）· [concurrency](https://github.com/oekit/concurrency) · [core](https://github.com/oekit/core) |

几条关键依赖链：

- **服务发现**：`hertz` / `kitex` → `nns` → `registry`（Nacos 实现 + 降级链）
- **端点弹性**：`nns-endpoint` → `httpx`（per-service 熔断 + 换实例重试）
- **数据访问**：`hertz/crudh` → `gormx`（泛型 CRUD Handler / 事务防丢更新）；`redisx` → `data`（缓存接口实现）
- **弹性原语**：`concurrency`（滑动窗口 / 自适应熔断 `ErrCircuitOpen` / CPU 自适应降载）；`redisx` 内置 ratelimit（Redis 分布式限流，故障本地兜底）
- **优雅关停**：`hertz.RunServer` / `kitex.RunServer` → `bootstrap` 组合根（排空连接 → 释放资源）

> 完整「模块 × 依赖」表见各仓 README 的「矩阵总览」（由 [matrix-tools](https://github.com/oekit/matrix-tools) 自动生成与每周巡检）。

## 名字由来

| 字母 | 含义 |
|---|---|
| **o** | **Open** — 开源：MIT 协议，全部公开 |
| **e** | **Easy** — 易用：一个 import 即用，微库零捆绑 |
| **kit** | **Kit** — 工具集合：微库 → 门面 → 框架生态，同一套规范 |

## 快速开始

```bash
# 微工具集
go get github.com/oekit/pkg@latest

# HTTP 服务全家
go get github.com/oekit/middleware github.com/oekit/hertz

# 日志门面 + Redis 全家桶
go get github.com/oekit/logx github.com/oekit/redisx
```

## AI Agent 入口

- 每个模块仓根目录均含 `AGENTS.md`（硬规则速览 + 本仓包清单）
- 机器可读全矩阵索引：https://oekit.github.io/llms.txt
- 《AI Agent 使用》指南：https://oekit.github.io/guide/ai-agent.html

## 兼容性

| 旧路径（重定向仍可用） | 新路径 |
|---|---|
| `git.enjoye.top/enjoydream/ekit/…`（ekit 单体，冻结维护） | `github.com/oekit/…` |
| `github.com/yi-nology/ekit-…` | `github.com/oekit/…` |
| `github.com/oekit/redis` | `github.com/oekit/redisx`（v0.5.0 起） |
| `github.com/oekit/gorm` | `github.com/oekit/gormx`（v0.3.0 起） |
| `github.com/oekit/istio` | `github.com/oekit/kitex/istio`（v0.5.0 起，微库已收编） |
| `github.com/oekit/handler/xxx` | `github.com/oekit/hertz/xxx`（v0.5.0 起，微库已收编） |
| `github.com/oekit/<旧微库>`（stringx/slicex/validator 等已删仓） | `github.com/oekit/pkg/xxx`（微库并入 pkg） |

## License

MIT — 见 [LICENSE](LICENSE)
