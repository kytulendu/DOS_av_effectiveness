#!/bin/bash
# Rename files and print the list of old filename to a csv.

declare -i i=0
declare -i f_count=0
declare -i d_count=0

if [ -f 'Virus.csv' ]; then
    rm Virus.csv
fi

# Prevent directory accessing issue in some DOS anti-virus software
mv Virus.DOS Virus

cd ./Virus

mkdir 0

while read -r line; do
    if [ ${f_count} == 1000 ]; then
        f_count=0
        d_count+=1
        mkdir ${d_count}
    fi

    num=$(printf "%08d\n" "${i}")
    echo "${d_count};${num};${line}" >> ../Virus.csv

    # rename to .COM to help some anti-virus detect it
    mv ${line} ./${d_count}/${num}.COM

    i+=1
    f_count+=1
done < <(find . -type f | sed 's/^\.\///g' | sort)

echo done!
