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
#
# 'defs.mk' should contain all items that require modification
#  Nothing here should need to be changed.
# 
#  This requires 'gmake'
#

include defs.mk

# Tools used
PKGSEND=	/usr/bin/pkgsend
PKGMOGRIFY=	/usr/bin/pkgmogrify
PKGDEPEND=	/usr/bin/pkgdepend
PKGFMT=		/usr/bin/pkgfmt
PKGLINT=	/usr/bin/pkglint
UNIQ=		/usr/bin/uniq
SED=		/usr/bin/sed

# Package Manifest
MANIFEST=	$(SW_NAME).p5m

# Common cache for pkglint
PKGLINT_CACHE=	../../common/pkglint-cache

# Repo against which to run pkglint
PKGLINT_REPOS=  -r $(PKGLINT_OS_REPO)

# Start with defining macro ARCH used with transforms
PKG_DEFS=	-D ARCH=$(shell uname -p)

#  Expand SW_* vars into macro definitions in PKG_DEFS.
$(foreach var, $(filter SW_%, $(.VARIABLES)), \
	$(eval PKG_DEFS += -D $(var)="$$($(var))") \
)

# Default is to create ready-to-publish manifest
.DEFAULT_GOAL := manifest

# Real targets below
$(MANIFEST):
	$(PKGMOGRIFY) $(PKG_DEFS) $(PROTO) $(TRANSFORMS) | \
	$(SED) -e '/^$$/d' -e '/^#.*$$/d' | $(UNIQ) | \
	$(PKGFMT) > $@

manifest:	$(MANIFEST)

pkglint:	manifest
	$(PKGLINT) -c $(PKGLINT_CACHE) $(PKGLINT_REPOS) $(MANIFEST)

publish:	manifest
	$(PKGSEND) publish -s $(PKGREPO) -d . $(MANIFEST)

clean:
	$(RM) $(MANIFEST)

.PHONY:	pkglint publish clean $(MANIFEST)

