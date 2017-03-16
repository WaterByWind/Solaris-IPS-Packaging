## Build c-ares

- Generic build is sufficient

### Quick Start
1. `export PATH=/usr/gnu/bin:/usr/bin:/usr/sbin:/usr/sfw/bin`
2. `cd ~/Downloads`
3. `curl -O https://c-ares.haxx.se/download/c-ares-1.12.0.tar.gz`
4. `cd ~/src`
5. `tar xf ~/Downloads/c-ares-1.12.0.tar.gz`
6. `cd c-ares-1.12.0`
7. `./configure --prefix=/opt/c-ares`
8. `gmake`
9. `gmake DESTDIR=~/pkg/c-ares/Proto.dist/ install`
10. `cp ~/src/c-ares-1.12.0/LICENSE.md ~/pkg/c-ares/Proto.dist/opt/c-ares/`
11. `gmake`
12. `gmake pkglint`
13. `gmake publish`
