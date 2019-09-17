#!/bin/sh
echo yarn install
echo $MONGODB_URI_ENV
echo yarn install
echo cd packages/evie-data/
echo MONGODB_URI=$MONGODB_URI_ENV AUTH_DB=admin $(yarn bin)/gulp loadData:agent