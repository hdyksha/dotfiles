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
    if [ -d $dest ]; then
        rm -rf $dest # To avoid creating the link inside $dest directory.
    fi
    ln -sf $source $dest
    printf "\e[32mCreate symlink:\e[m $dest -> $source\n"
done

cd $CURDIR
