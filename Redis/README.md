## Redis

Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache and message broker. It supports data structures such as strings, hashes, lists, sets, sorted sets with range queries, bitmaps, hyperloglogs and geospatial indexes with radius queries. Redis has built-in replication, Lua scripting, LRU eviction, transactions and different levels of on-disk persistence, and provides high availability via Redis Sentinel and automatic partitioning with Redis Cluster.

### Packaging
See [BUILDNOTES.md](Build/BUILDNOTES.md) for details regarding compiling Redis and building an IPS package.

In addition to the binaries resulting from the application build, this package also provides:
- Standard SMF service (svc:/application/redis:redis-32)
  - Manifest:  `lib/svc/manifest/site/application/redis.xml`
- Default configuration file, which should be edited as needed.
  - `etc/opt/redis/redis.conf`

The configuration keeps the default port of 6379.  If this is changed the SMF service 'stop' detail may need to be modified to reflect this (add `-P <port>` to `redis-cli shutdown`)


### References
- Primary location:  https://redis.io
- Downloads and release notes:  https://redis.io/download
- Documentation:  https://redis.io/documentation
- Community:  https://www.reddit.com/r/redis/
- Development repository (GitHub):  https://github.com/antirez/redis
