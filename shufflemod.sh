#!/bin/sh
set -e
tmpfile="$(mktemp)"
exec 3<>"$tmpfile"
rm -f "$tmpfile"
rand="$(shuf -i 1-189573 -n 1)"
curl -s "https://modarchive.org/jsplayer.php?moduleid=$rand" >&3
xmp /dev/fd/3
