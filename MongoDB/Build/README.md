## MongoDB

MongoDB is an open-source, document database designed for ease of development and scaling.

### Packaging
See [BUILDNOTES.md](BUILDNOTES.md) for details regarding compiling MongoDB and building an IPS package.

In addition to the binaries resulting from the application build, this package also provides:
- Standard SMF service (svc:/application/database/mongodb:mongodb-34)
  - Manifest:  `lib/svc/manifest/site/application/database/mongodb.xml`
- Default configuration file, which should be edited as needed.
  - `etc/opt/mongodb/mongod.conf`


### References
- Primary location:  https://www.mongodb.com
- Downloads and release notes:  https://www.mongodb.com/download-center
- Documentation:  https://docs.mongodb.com
- Development repository (GitHub):  https://github.com/mongodb
