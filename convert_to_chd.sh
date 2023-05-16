#!/bin/bash

echo "Will proccess files on directory: $1"
cd $1
for i in */*.cue; do chdman createcd -i "$i" -o "${i%.*}.chd"; done
for i in */*.chd; do echo "${i%.*}.chd" > "${i%.*}.m3u"; done
for i in */*.bin; do rm "${i%.*}.bin"; done
for i in */*.cue; do rm "${i%.*}.cue"; done
for i in */*.m3u; do mv "${i%.*}.m3u" ./; done
echo "All done"
