## iperf3

iperf is a tool for active measurements of the maximum achievable bandwidth on IP networks. It supports tuning of various parameters related to timing, protocols, and buffers. For each test it reports the bandwidth, loss, and other parameters.

### Packaging
See [BUILDNOTES.md](Build/BUILDNOTES.md) for details regarding compiling iperf3 and building an IPS package.

### Notes
On Solaris the default maximum send & receive buffer sizes are typically 1MB.  When using iperf3 attempts to use larger values with the `-w` option will fail unless this parameter is adjusted using `ipadm`:
* example: `pfexec ipadm set-prop -t -p max_buf=4194304 tcp` 


### References
- Primary location:  http://software.es.net/iperf
- Downloads:  http://downloads.es.net/pub/iperf/
- Development repository (GitHub):   https://github.com/esnet/iperf
