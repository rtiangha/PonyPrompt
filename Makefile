# ============================================================================
#                                 DIRECTIONS
# ============================================================================
#
# To Install:
# 	Install ponyprompt:        make install
#
# To Uninstall:
# 	Uninstall ponyprompt:      make uninstall
#

# ===========================================================================
#                        CONFIGURATION OPTIONS
# ===========================================================================
#
# BINDIR:      Directory of executables
# MANDIR:      Root directory of man pages
#

BINDIR ?= /usr/bin
MANDIR ?= /usr/share/man

# ============================================================================
#                        END OF CONFIGURATION OPTIONS
# ============================================================================

# Install ponyprompt package
install:
	cp unix/usr/bin/ponyprompt $(BINDIR)/
	cp unix/usr/share/man/man6/ponyprompt.6.gz $(MANDIR)/man6/

# Uninstall ponyprompt package
uninstall:
	$(RM) $(BINDIR)/ponyprompt
	$(RM) $(MANDIR)/man6/ponyprompt.6.gz
