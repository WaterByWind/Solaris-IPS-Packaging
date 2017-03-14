## Build InfluxDB

- InfluxDB is written in Go and will require the [go](../../Go) compiler be installed.
- Optional documentation will require [asciidoc](../../AsciiDoc) to be installed
- Generic build instructions are sufficient.
- See [Contributing to InfluxDB](https://github.com/influxdata/influxdb/blob/master/CONTRIBUTING.md) for additional build detail.

### Quick Start
1. (Optional) To include man pages ensure build dependencies are installed.
  - `pkg install xmlto data/docbook`
2. `export GOPATH=~/go`
2. `export PATH=/opt/go/bin:/opt/asciidoc/bin:/usr/gnu/bin:/usr/bin:/usr/sbin`
  - Eliminate `/opt/asciidoc/bin` if man pages not desired.
2. `go get github.com/influxdata/influxdb`
3. `cd ~/go/src/github.com/influxdata/influxdb`
4. `go get ./...`
5. `go install -ldflags="-X main.version=$(git describe --always --tags) -X main.branch=$(git rev-parse --abbrev-ref HEAD) -X main.commit=$(git rev-parse HEAD) -X main.buildTime=$(date -u +%FT%T%z)" ./...`
6. (Optional) Build documentation
  1. `cd man`
  2. `make DESTDIR=~/pkg/InfluxDB/Proto.dist/dist/ install`
5. `cp ~/go/bin/influx* ~/pkg/InfluxDB/Proto.dist/dist/bin`
6. `cp ~/go/src/github.com/influxdata/influxdb/LICENSE ~/pkg/InfluxDB/Proto.dist/dist`
6. `cd ~/pkg/InfluxDB/Build`
6. `gmake`
7. `gmake pkglint`
8. `gmake publish`
