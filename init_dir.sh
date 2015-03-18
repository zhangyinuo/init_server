#!/bin/sh

disk=(/diska /diskb /diskc /diskd /diske /diskf /diskg)

diskcount=${#disk[@]}

subdir=64

idx=0
idx_disk=0

while [ $idx -lt $subdir ]
do
	if [ $idx_disk -eq $diskcount ]
	then
		idx_disk=0
	fi

	mkdir ${disk[$idx_disk]}/$idx

	ln -s ${disk[$idx_disk]}/$idx  /data/$idx

	idx=` expr $idx + 1 `
	idx_disk=` expr $idx_disk + 1 `
done
