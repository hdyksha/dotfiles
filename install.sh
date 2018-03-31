#!/bin/sh

CURDIR=$PWD
DOTDIR=`dirname $0`
SCRIPT=`basename $0`

cd $DOTDIR

ls -1a | \
grep -v -e '^.$' -e '^..$' -e '^.git$' -e "^${SCRIPT}$" | \
while read f ; do
    source=$PWD/$f
    dest=$HOME/$f
    printf "\e[32mCreate symlink:\e[m $dest -> $source\n"
    ln -sf $source $dest
done

cd $CURDIR
