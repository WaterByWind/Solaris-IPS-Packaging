## Build Go

- Generic build is sufficient
- Current versions of Go are themselves built with Go.
  - If an existing version of Go is available that is sufficient
  - If there is no existing Go available, then the Go bootstrap instructions at https://golang.org/doc/install/source should be followed first.  This essentially involves building Go 1.4 which was the last C version, then using that to build the current version.

### Quick Start
1. `export GOROOT_FINAL=/opt/go`
2. `export GOROOT_BOOTSTRAP=/opt/go`
  - Substitute proper directory to existing 'go' install if different.
3. `export PATH=/opt/go/bin:/usr/gnu/bin:/usr/bin:/usr/sbin:/usr/sfw/bin`
  - Substitute proper directory to existing 'go' install for `/opt/go` if different.
4. `cd ~/Downloads`
5. `curl -O https://storage.googleapis.com/golang/go1.8.src.tar.gz`
6. `cd ~/src && tar xf ~/Downloads/go1.8.src.tar.gz`
7. `cd go`
8. `./all.bash`
9. `cd .. && cp -rp go ~/pkg/Go/Proto.dist/dist`
10. `cd ~/src/pkg/Go/Build`
11. `gmake`
12. `gmake pkglint`
13. `gmake publish`
