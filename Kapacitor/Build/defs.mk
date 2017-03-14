#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# The MIT License (MIT)
#
# Copyright (c) 2017 Waterside Consulting, inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

##
## Comment any unused vars
##

# Base definitions
# All should generally be defined
SW_NAME=		kapacitor
SW_PKG_FMRI=		web/$(SW_NAME)
SW_IPS_VERSION=		1.2.0
SW_BUILD_VERSION=	$(shell uname -r)
SW_SUMMARY=		Kapacitor - Time series data processing engine
SW_DESCRIPTION=		Kapacitor is an open source data processing framework that makes it easy to create alerts, run ETL jobs and detect anomalies. Kapacitor is the final piece of the TICK stack.
SW_CLASSIFICATION=	org.opensolaris.category.2008:Web Services/Application and Web Servers
SW_PROJECT_URL=		https://www.influxdata.com
SW_SOURCE_URL=		https://github.com/influxdata/kapacitor/archive/$(SW_IPS_VERSION).zip

##
## Optional Below
##
#
# Used by metadata.mog
SW_USERLAND_GIT_REMOTE=	https://github.com/influxdata/kapacitor.git
SW_HUMAN_VERSION=	1.2.0-94
SW_LICENSE_FILE=	dist/LICENSE
SW_LICENSE=		MIT License

#
# Required functional groups and users
# - Ownership of processes and dynamic data
# - usergroup.mog and fix-attrs.mog depend on these
SW_GROUP_NAME=		kapacitor
SW_GROUP_GID=		716
SW_USER_NAME=		kapacitor
SW_USER_UID=		716
SW_USER_GCOS=		Kapacitor
SW_USER_HOME=		/export/home/kapacitor
SW_USER_SHELL=		/usr/bin/bash
# - Ownership of web content
SW_WWWPUB_GROUP_NAME=	webauthr
SW_WWWPUB_GROUP_GID=	504
SW_WWWPUB_USER_NAME=	webauthr
SW_WWWPUB_USER_UID=	504
SW_WWWPUB_USER_GCOS=	Web Author
SW_WWWPUB_USER_HOME=	/home/webauthr
SW_WWWPUB_USER_SHELL=	/usr/bin/bash

#
# Transforms for 'pkgmogrify'
# Adjust as needed
TRANSFORMS= 		src-repo.mog metadata.mog custom.mog os-dist.mog \
			fix-attrs.mog usergroup.mog deps.mog std-transforms.mog

#
# Additional, option, prototype directories
#
PROTO_EXTRA=

#
# IPS repo publish location
# Adjust apporpriately
PKGREPO=		/export/Repositories

#
# OS Repo location for pkglint
#
PKGLINT_OS_REPO=	http://pkg.oracle.com/solaris/release
