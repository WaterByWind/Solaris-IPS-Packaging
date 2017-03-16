## Build iperf3

- Generic build is sufficient

### Quick Start
1. `export PATH=/usr/gnu/bin:/usr/bin:/usr/sbin:/usr/sfw/bin`
2. `cd ~/Downloads`
3. `curl -O http://downloads.es.net/pub/iperf/iperf-3.1.7.tar.gz`
4. `cd ~/src`
5. `gtar xf ~/Downloads/iperf-3.1.7.tar.gz`
6. `cd iperf-3.1.7`
7. `./configure CFLAGS="-std=c11" --prefix=/opt/iperf3`
8. `gmake`
9. `gmake check`
10. `make DESTDIR=~/pkg/iperf3/Proto.dist/ install`
11. `cp ~/src/iperf-3.1.7/LICENSE ~/pkg/iperf3/Proto.dist/opt/iperf3`
12. `cd ~/pkg/iperf3/Build`
13. `gmake`
14. `gmake pkglint`
15. `gmake publish`
