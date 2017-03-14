## InfluxDB

InfluxDB is a time series database built from the ground up to handle high write and query loads. It is the second piece of the TICK stack. InfluxDB is meant to be used as a backing store for any use case involving large amounts of timestamped data, including DevOps monitoring, application metrics, IoT sensor data, and real-time analytics.

### Packaging
See [BUILDNOTES.md](Build/BUILDNOTES.md) for details regarding compiling InfluxDB and building an IPS package.

In addition to the binaries resulting from the application build, this package also provides:
- Standard SMF service (svc:/application/database/influxdb:influxdb-12)
  - Manifest:  `lib/svc/manifest/site/application/database/influxdb.xml`
- Default configuration file, which should be edited as needed.
  - `etc/opt/influxdb/influxdb.conf`


### References
- Primary location:  https://www.influxdata.com
- Downloads:  https://portal.influxdata.com/downloads
- Documentation:  https://docs.influxdata.com/influxdb
- Development repository (GitHub):  https://github.com/influxdata/influxdb
