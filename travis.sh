#!/bin/bash
# on error exit
set -e
# Flags used here, not in `make html`:
#  -n   Run in nit-picky mode. Currently, this generates warnings for all missing references.
#  -W   Turn warnings into errors. This means that the build stops at the first warning and sphinx-build exits with exit status 1.
#  -N   Do not emit colors
#  -T   output full traceback
# --keep-going continue the processing after a warning
sphinx-build  -WNT --keep-going -b html . /tmp
# spell checking
sphinx-build -b spelling . /tmp 
