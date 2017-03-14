## Build Kapacitor

- Kapacitor is written in Go and will require the [go](../../Go) compiler be installed.
- Generic build instructions are sufficient.


### Quick Start
1. `export GOPATH=~/go`
2. `export PATH=/opt/go/bin:${PATH}`
3. `go get github.com/influxdata/kapacitor`
4. `cd ~/go/src/github.com/influxdata/kapacitor`
5. `go install -ldflags="-X main.version=$(git describe --always --tags) -X main.branch=$(git rev-parse --abbrev-ref HEAD) -X main.commit=$(git rev-parse HEAD) -X main.buildTime=$(date -u +%FT%T%z)" ./cmd/... ./tick/...`
8. `cp ~/go/bin/{kapacitor*,tickfmt} ~/pkg/Kapacitor/Proto.dist/dist/bin`
9. `cp ~/go/src/github.com/influxdata/kapacitor/LICENSE ~/pkg/Kapacitor/Proto.dist/dist`
10. `cd ~/pkg/Kapacitor/Build`
11. `gmake`
12. `gmake pkglint`
13. `gmake publish`
