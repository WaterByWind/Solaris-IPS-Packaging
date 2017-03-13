## UniFi Controller

The UniFi® Software-Defined Networking (SDN) platform is an end-to-end system of network devices across different locations — all controlled from a single interface.

### Packaging
See [BUILDNOTES.md](Build/BUILDNOTES.md) for details regarding compiling dependencies and building an IPS package.

In addition to the vendor-distributed java application, this package also provides:
- Standard SMF service (svc:/application/unifi:unifi-v5)
  - Manifest:  `lib/svc/manifest/site/application/unifi.xml`
  - Method:  `lib/svc/method/svc-unifi`

### Dependencies
- UniFi is a java application and requires a current JVM be installed.
- Unifi leverages [MongoDB](https://www.mongodb.com) as a database so requires this be installed.

### References
- Primary location:  https://unifi-sdn.ubnt.com
- Downloads and Documentation:  https://www.ubnt.com/download/unifi
- Announcements:  https://community.ubnt.com/t5/UniFi-Updates-Blog/bg-p/Blog_UniFi
- Community Forum:  https://community.ubnt.com/t5/UniFi/ct-p/UniFi
