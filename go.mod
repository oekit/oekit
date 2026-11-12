module github.com/oekit/oekit

go 1.26.0

// ---- oekit BOM：矩阵兼容快照的地板 require（勿手改/勿 tidy，见 README）----
require (
	github.com/oekit/bootstrap v0.7.8
	github.com/oekit/bootstrap/nacos v0.3.24
	github.com/oekit/bootstrap/obs v0.2.26
	github.com/oekit/concurrency v0.34.1
	github.com/oekit/core v0.15.0
	github.com/oekit/data v0.21.1
	github.com/oekit/etcdx v0.3.1
	github.com/oekit/gormx v0.11.14
	github.com/oekit/hertz v0.11.5
	github.com/oekit/httpx v0.11.0
	github.com/oekit/k8s v0.2.4
	github.com/oekit/kitex v0.7.18
	github.com/oekit/kitex-examples v0.1.29
	github.com/oekit/kitex/cmd/thrift2openapi v0.1.0
	github.com/oekit/kitex/istio v0.7.0
	github.com/oekit/kitex/observability/tracing/instrumentation/kitexotel v0.7.16
	github.com/oekit/kitx v0.9.0
	github.com/oekit/logx v0.10.0
	github.com/oekit/logx/hertzlog v0.1.2
	github.com/oekit/logx/hlog v0.1.12
	github.com/oekit/logx/kitexlog v0.1.12
	github.com/oekit/logx/sink v0.1.2
	github.com/oekit/metrics v0.3.0
	github.com/oekit/middleware v0.18.0
	github.com/oekit/network v0.10.2
	github.com/oekit/nns v0.8.0
	github.com/oekit/nns-endpoint v0.3.5
	github.com/oekit/pkg v0.46.0
	github.com/oekit/redisx v0.14.1
	github.com/oekit/registry v0.5.15
	github.com/oekit/registry/nacos v0.1.14
	github.com/oekit/registry/nacosimpl v0.2.0
	github.com/oekit/timertask v0.5.1
	github.com/oekit/timertask/redis v0.2.20
	github.com/oekit/tracing v0.4.2
	github.com/oekit/workflow v0.11.1
)
