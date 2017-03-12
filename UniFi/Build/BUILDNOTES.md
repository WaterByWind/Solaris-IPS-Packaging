## Build UniFi

- There is nothing to build for UniFi itself as the controller is Java-based.
- UniFi uses snappy-java, but the bundled .jar does not include native-library support for Solaris so a native library will need to be compiled.
  - The generic build is sufficient.
  - GNU make (gmake) must be used instead of default BSD make.
- UniFi leverages MongoDB as a database, so this will need to be installed as a dependency.

### Quick Start
1. Build snappy-java native library:
  1. `export JAVA_HOME=/usr/java`
  2. `cd ~/src`
  3. `git clone https://github.com/xerial/snappy-java.git`
  4. `cd snapy-java`
  5. `gmake native`
  6. `cp target/snappy-1.1.4-SunOS-x86_64/libsnappyjava.so ~/pkg/UniFi/Proto.custom/opt/unifi/lib/native/SunOS/amd64/`
2. `cd ~/src`
3. `curl -O http://dl.ubnt.com/unifi/5.4.11/UniFi.unix.zip`
4. `unzip UniFi.unix.zip -d ~/pkg/UniFi/Proto.dist/dist`
5. `cd ~/pkg/UniFi/Build`
6. `gmake`
7. `gmake pkglint`
8. `gmake publish`
