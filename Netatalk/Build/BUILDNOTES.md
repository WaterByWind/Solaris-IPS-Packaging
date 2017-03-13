## Build Netatalk

- Generic build is sufficient (see configure options below)

### Quick Start
1. Ensure build dependencies are installed.
  - `pkg install data/docbook database/berkeleydb-5 system/file-system/ufs system/network/avahi`
2. `cd ~/Downloads`
3. `curl -LO http://downloads.sourceforge.net/project/netatalk/netatalk/3.1.10/netatalk-3.1.10.tar.bz2`
4. `cd ~/src`
5. `tar xf ~/Downloads/netatalk-3.1.10.tar.bz2`
6. `cd netatalk-3.1.10`
7. `./configure --prefix=/opt/netatalk --sysconfdir=/etc/opt/netatalk --localstatedir=/var/opt/ --enable-krbV-uam --enable-zeroconf --with-pam --with-pam-confdir=/etc/pam.d --with-dbus-sysconf-dir=/etc/dbus-1/system.d --with-lockfile=/var/run/netatalk.lock --with-init-style=solaris --with-bdb --with-gssapi=/usr/include/gssapi --enable-srvloc --with-docbook=/usr/share/sgml/docbook/xsl-stylesheets`
8. `make`
9. `make check`
10. `make -k DESTDIR=~/pkg/Netatalk/Proto.dist/dist install`
  - Ignore error about failing to create service
11. `cd ~/pkg/Netatalk/Build`
12. `gmake`
13. `gmake pkglint`
14. `gmake publish`
