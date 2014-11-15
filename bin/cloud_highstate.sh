#!/bin/bash

me=`basename $0`
pwd=$(basename `pwd`)
echo "This is $pwd/$me" 1>&2
set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HOTROD_ROOT="$( cd $DIR/../.. && pwd )"

cd $DIR

time salt-ssh \* -i $@ state.highstate
