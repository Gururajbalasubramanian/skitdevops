#!/bin/bash
DIR="/home/ubuntu/audios/"
TYPE='*.wav'
OUT="/tmp/list.txt"
LOG="/tmp/log.txt"
echo "" > "$LOG"
find "$DIR" -type f -mtime +2 -name "${TYPE"} -print0 | xargs -I {} -0 ls "{}"> "${OUT}"
while IFS= read -r file
do
	echo "${file}" "$(stat -c "%x" "${file}")" "$(date --iso-8601=seconds)" >>"$LOG"
    rm -f "${file}"
done <"${OUT}"
rm "${OUT}"