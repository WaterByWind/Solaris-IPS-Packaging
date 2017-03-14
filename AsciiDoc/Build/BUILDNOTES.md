## Configure AsciiDoc

- No "build" is required, just configuration.

### Quick Start
1. `pkg install autoconf`
2. `cd ~/Downloads`
3. `curl -LO https://downloads.sourceforge.net/project/asciidoc/asciidoc/8.6.9/asciidoc-8.6.9.tar.gz`
4. `cd ~/src`
4. `tar xf ~/Downloads/asciidoc-8.6.9.tar.gz`
5. `cd asciidoc-8.6.9`
6. `autoconf`
7. `./configure --prefix=/opt/asciidoc --sysconfdir=/etc/opt/asciidoc`
8. `gmake DESTDIR=~/pkg/AsciiDoc/Proto.dist install`
11. `cd ~/pkg/AsciiDoc/Build`
12. `gmake`
13. `gmake pkglint`
14. `gmake publish`
