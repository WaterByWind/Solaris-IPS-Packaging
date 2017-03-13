## Netatalk

Netatalk is a freely-available Open Source AFP fileserver. A UNIX, Linux or BSD system running Netatalk is capable of serving many Macintosh clients simultaneously as an AppleShare file server (AFP).

### Packaging
See [BUILDNOTES.md](Build/BUILDNOTES.md) for details regarding compiling Netatalk and building an IPS package.

In addition to the binaries resulting from the application build, this package also provides:
- Standard SMF service (svc:/network/netatalk:netatalk-3)
  - Manifest:  `lib/svc/manifest/network/netatalk.xml`
- Default configuration file, which should be edited as needed.
  - `etc/opt/netatalk/afp.conf`


### References
- Primary location:  http://netatalk.sourceforge.net
- Downloads:  https://sourceforge.net/projects/netatalk/files/
- Release notes:  http://netatalk.sourceforge.net/3.1/ReleaseNotes3.1.10.html
- Documentation:  http://netatalk.sourceforge.net/3.1/htmldocs
- Wiki:  http://netatalk.sourceforge.net/wiki/
- Development repository mirror (GitHub):  https://github.com/Netatalk
