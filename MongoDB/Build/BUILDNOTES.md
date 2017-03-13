## Obtain MongoDB

- MongoDB is already available in binary (pre-compiled) form for Solaris x64.  Unless SSL support is required or a SPARC install is required this is the recommended option.

### Quick Start
1. `cd ~/Downloads`
2. `curl -O https://fastdl.mongodb.org/sunos5/mongodb-sunos5-x86_64-3.4.2.tgz`
3. `cd ~/pkg/MongoDB/Proto.dist/dist`
4. `tar xf ~/Downloads/mongodb-sunos5-x86_64-3.4.2.tgz`
5. `cd ../../Build`
6. `gmake`
7. `gmake pkglint`
8. `gmake publish`
