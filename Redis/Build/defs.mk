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

# Base definitions
# All should generally be defined
SW_NAME=		redis
SW_PKG_FMRI=		database/$(SW_NAME)
SW_IPS_VERSION=		3.2.8
SW_BUILD_VERSION=	$(shell uname -r)
SW_SUMMARY=		Redis - In-memory data structure store
SW_DESCRIPTION=		Redis is an open source (BSD-licensed), in-memory data structure store, used as database, cache, and message broker
SW_CLASSIFICATION=	org.opensolaris.category.2008:System/Databases
SW_PROJECT_URL=		http://redis.io
SW_SOURCE_URL=		http://download.redis.io/releases/$(SW_NAME)-$(SW_IPS_VERSION).tar.gz

##
## Optional Below
##
#
# Used by metadata.mog
SW_USERLAND_GIT_REMOTE= https://github.com/antirez/redis
SW_HUMAN_VERSION=
SW_LICENSE_FILE=	opt/$(SW_NAME)/COPYING
SW_LICENSE=		BSD-3-Clause

#
# Required functional groups and users
# - Ownership of processes and dynamic data
# - usergroup.mog and fix-attrs.mog depend on these
SW_GROUP_NAME=		redis
SW_GROUP_GID=		710
SW_USER_NAME=		redis
SW_USER_UID=		710
SW_USER_GCOS=		Redis
SW_USER_HOME=		/export/home/redis
SW_USER_SHELL=		/usr/bin/bash

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

