## Build Oniguruma

- Generic build is sufficient

### Quick Start
1. `cd ~/Downloads`
2. `curl -LO https://github.com/kkos/oniguruma/releases/download/v6.1.3/onig-6.1.3.tar.gz`
3. `cd ~/src`
4. `tar xf ~/Downloads/onig-6.1.3.tar.gz`
5. `cd onig-6.1.3`
6. `./configure --prefix=/opt/oniguruma`
7. `gmake`
8. `gmake check`
9. `gmake DESTDIR=~/pkg/Oniguruma/Proto.dist/dist/ install`
10. `cp COPYING ~/pkg/Oniguruma/Proto.dist/dist/opt/oniguruma/LICENSE`
11. `cd ~/pkg/Oniguruma/Build`
12. `gmake`
13. `gmake pkglint`
14. `gmake publish`
