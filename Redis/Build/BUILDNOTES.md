## Build Redis

- Generic build is sufficient
- 'make test' needs /usr/gnu first in $PATH to ensure expected/proper versions of utilities are used

### Quick Start
1. `export PATH=/usr/gnu/bin:/usr/bin:/usr/sbin:/usr/sfw/bin`
2. `mkdir -p ~/src/Redis && cd ~/src/Redis`
3. `curl -O http://download.redis.io/releases/redis-3.2.8.tar.gz`
4. `tar xf redis-3.2.8.tar.gz`
5. `cd redis-3.2.8`
6. `gmake distclean`
7. `gmake CC=gcc CFLAGS="-m64 -march=native" LDFLAGS="-m64"`
8. `gmake test`
9. `gmake install PREFIX=~/src/pkg/Redis/Proto.dist/opt/redis/`
10. `cp ~/src/Redis/redis-3.2.8/COPYING ~/src/pkg/Redis/Proto.dist/opt/redis`
11. `cd ~/src/pkg/Redis/Build`
12. `gmake`
13. `gmake pkglint`
14. `gmake publish`
