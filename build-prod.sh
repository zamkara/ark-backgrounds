#!/usr/bin/env bash
set -euo pipefail

BUILDDIR="$(mktemp -d /tmp/ark-bg-build-XXXXXX)"
PKGDEST="$(pwd)/dist"

mkdir -p "$PKGDEST"

BUILDDIR="$BUILDDIR" PKGDEST="$PKGDEST" makepkg -f --clean

rm -rf "$BUILDDIR"

echo "Package built: $PKGDEST/"
