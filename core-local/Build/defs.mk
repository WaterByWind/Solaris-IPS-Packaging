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
SW_NAME=		core-local
SW_PKG_FMRI=		system/$(SW_NAME)
SW_IPS_VERSION=		1.2
SW_BUILD_VERSION=	$(shell uname -r)
SW_SUMMARY=		Local Core
SW_DESCRIPTION=		Local directory heirarchy and configurations
SW_CLASSIFICATION=	org.opensolaris.category.2008:System/Core

SW_LICENSE_FILE=	LICENSE
SW_LICENSE=		MIT License

##
## Prototype 
##
PROTO=			usrlocal.proto

##
## Transforms for 'pkgmogrify'
##
TRANSFORMS=             src-repo.mog metadata.mog custom.mog os-dist.mog \
			std-transforms.mog
			
## 
## IPS repo publish location 
##
PKGREPO=		/export/Repositories/

##
## OS Repo location for pkglint
## 
PKGLINT_OS_REPO=        http://pkg.oracle.com/solaris/release

