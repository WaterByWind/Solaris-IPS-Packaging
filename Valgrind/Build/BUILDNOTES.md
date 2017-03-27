## Build Valgrind

- Generic build is sufficient
- See README.solaris for specific details

### Quick Start
1. `cd ~/Downloads`
2. `curl -O http://valgrind.org/downloads/valgrind-3.12.0.tar.bz2`
3. `cd ~/src`
4. `tar xf ~/Downloads/valgrind-3.12.0.tar.bz2`
5. `cd valgrind-3.12.0`
6. `./configure CC='gcc -m64' CXX='g++ -m64' --prefix=/opt/valgrind`
7. `gmake`
8. `gmake check`
9. `gmake DESTDIR=~/pkg/Valgrind/Proto.dist/dist install`
10. `cp COPYING ~/src/pkg/Valgrind/Proto.dist/dist/opt/valgrind/LICENSE`
11. `gmake`
12. `gmake pkglint`
13. `gmake publish`
