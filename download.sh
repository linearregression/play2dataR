#!/bin/bash
set -e # first error should stop execution of this script
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm -f *.zip
wget -v http://downloads.typesafe.com/typesafe-activator/$ACTIVATORVER/typesafe-activator-$ACTIVATORVER-minimal.zip
unzip -oq typesafe-activator-$ACTIVATORVER-minimal.zip
echo ${BASE_DIR}
mv -f $BASE_DIR/activator-$ACTIVATORVER-minimal/* . && rm -rf activator-$ACTIVATORVER-minimal
#rm -f *.zip
set +e
