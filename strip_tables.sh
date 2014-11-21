#!/bin/sh
#
# We use this script to reduce the size of the embedded data tables.  The
# strategy and regex were provided by Kang Seonghoon.

echo "Stripping comments from tables."

sed -i 's/^\([ \t]*{*\(0x[0-9a-fA-F]\+,[ \t]*\)\{3\}0x[0-9a-fA-F]\+}*,\)[ \t]*\/\/.*$/\1/' internal/cld2_generated_* internal/cld_generated_*
