#!/bin/bash

# 1. To lower.
RESULT=`echo $1 | tr '[:upper:]' '[:lower:]'`

# 2. Remove dot.
RESULT=`echo $RESULT | sed 's/\.//'`

# 3. Replace spaces with floors.
RESULT=`echo $RESULT | sed 's/\ /_/g'`

echo "LC_$RESULT"
echo "LC_$RESULT" > RESULT.txt

touch "LC_$RESULT.hpp"
touch "LC_$RESULT.cpp"