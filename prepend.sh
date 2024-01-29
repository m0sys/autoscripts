#!/bin/sh

if [ $# -ne 2 ]
then
echo "usage : script curr_dir prepend_str sepr=_"
exit 1
fi

for x in `ls $1/*.pdf`; do 
    fname=`echo $x`
    base=`basename $fname`
    dir=`dirname $fname`
    fname="$dir/${2}${3:-_}$base"
    echo "moving $x to $fname"
    mv $x $fname
done
