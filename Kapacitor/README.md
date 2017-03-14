## Kapacitor

Kapacitor is an open source data processing framework that makes it easy to create alerts, run ETL jobs and detect anomalies. Kapacitor is the final piece of the TICK stack.

### Packaging
See [BUILDNOTES.md](Build/BUILDNOTES.md) for details regarding compiling Kapacitor and building an IPS package.

In addition to the binaries resulting from the application build, this package also provides:
- Standard SMF service (svc:/application/kapacitor:kapacitor-12)
  - Manifest:  `lib/svc/manifest/site/application/kapacitor.xml`
- Default configuration file, which should be edited as needed.
  - `etc/opt/kapacitor/kapacitor.conf`


### References
- Primary location:  https://www.influxdata.com
- Downloads:  https://portal.influxdata.com/downloads
- Documentation:  https://docs.influxdata.com/kapacitor
- Development repository (GitHub):  https://github.com/influxdata/kapacitor
