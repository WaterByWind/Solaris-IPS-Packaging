## Build Node.js

- Generic build is sufficient

### Quick Start
1. `export PATH=/usr/gnu/bin:/usr/bin:/usr/sbin:/usr/sfw/bin`
2. `cd ~/Download`
3. `curl -O https://nodejs.org/dist/v6.10.0/node-v6.10.0.tar.gz`
4. `cd ~/src`
4. `tar xf ~/Download/node-v6.10.0.tar.gz`
5. `cd node-v6.10.0`
6. `CC=gcc ./configure --prefix=/opt/node`
7. `gmake`
8. `gmake doc`
9. `gmake DESTDIR=~/pkg/Node.js/Proto.dist install`
10. `cp ~/src/node-v6.10.0/LICENSE ~/pkg/Node.js/Proto.dist/opt/node`
11. `cd ~/pkg/Node.js/Build`
12. `gmake`
13. `gmake pkglint`
14. `gmake publish`
