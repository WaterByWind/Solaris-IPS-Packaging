#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# The MIT License (MIT)
#
# Copyright (c) 2016 Waterside Consulting, inc.
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

# Base definitions
# All should generally be defined
SW_NAME=		unifi
SW_PKG_FMRI=		system/management/$(SW_NAME)
SW_IPS_VERSION=		5.4.11
SW_BUILD_VERSION=	$(shell uname -r)
SW_SUMMARY=		Ubiquiti UniFi Controller
SW_DESCRIPTION=		Ubiquiti UniFi server is a centralized management system for UniFi suite of devices
SW_CLASSIFICATION=	org.opensolaris.category.2008:System/Enterprise Management
SW_PROJECT_URL=		https:/ubnt.com/unifi
SW_SOURCE_URL=		http://dl.ubnt.com/unifi/$(SW_IPS_VERSION)/UniFi.unix.zip

##
## Optional Below
##
#
# Used by metadata.mog
SW_USERLAND_GIT_REMOTE=
SW_HUMAN_VERSION=	5.4.11-9184
SW_LICENSE_FILE=
SW_LICENSE=

#
# Required functional groups and users
# - Ownership of processes and dynamic data
# - usergroup.mog and fix-attrs.mog depend on these
SW_GROUP_NAME=		unifi
SW_GROUP_GID=		712
SW_USER_NAME=		unifi
SW_USER_UID=		712
SW_USER_GCOS=		UniFi Controller
SW_USER_HOME=		/var/opt/unifi
SW_USER_SHELL=		/usr/bin/bash
# - Ownership of web content
SW_WWWPUB_GROUP_NAME=   webauthr
SW_WWWPUB_GROUP_GID=    504
SW_WWWPUB_USER_NAME=    webauthr
SW_WWWPUB_USER_UID=     504
SW_WWWPUB_USER_GCOS=    Web Author
SW_WWWPUB_USER_HOME=    /home/webauthr
SW_WWWPUB_USER_SHELL=   /usr/bin/bash

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

