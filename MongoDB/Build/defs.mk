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
SW_NAME=		mongodb-34
SW_PKG_FMRI=		database/$(SW_NAME)
SW_IPS_VERSION=		3.4.2
SW_BUILD_VERSION=	$(shell uname -r)
SW_SUMMARY=		MongoDB open source document-oriented database system
SW_DESCRIPTION=		MongoDB is a high-performance, open source, schema-free document-oriented data store that is easy to deploy, manage and use
SW_CLASSIFICATION=	org.opensolaris.category.2008:System/Databases
SW_PROJECT_URL=		https://www.mongodb.org
SW_SOURCE_URL=		https://fastdl.mongodb.org/src/mongodb-src-r$(SW_IPS_VERSION).tar.gz

##
## Optional Below
##
#
# Used by metadata.mog
SW_USERLAND_GIT_REMOTE=	https://github.com/mongodb/mongo
#SW_HUMAN_VERSION=
SW_LICENSE_FILE=	LICENSE
SW_LICENSE=		GNU Affero General Public License 3.0

#
# Required functional groups and users
# - Ownership of processes and dynamic data
# - usergroup.mog and fix-attrs.mog depend on these
SW_GROUP_NAME=		mongodb
SW_GROUP_GID=		708
SW_USER_NAME=		mongodb
SW_USER_UID=		708
SW_USER_GCOS=		MongoDB
SW_USER_HOME=		/export/home/mongodb
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

