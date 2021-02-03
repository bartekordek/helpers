#!/bin/bash -xe

# 1. To lower.
RESULT=`echo $1 | tr '[:upper:]' '[:lower:]'`

# 2. Remove dot.
RESULT=`echo $RESULT | sed 's/\.//'`

# 3. Replace spaces with floors.
RESULT=`echo $RESULT | sed 's/\ /_/g'`
NEW_NAME="LC_$RESULT"
echo "New name: $NEW_NAME"
#echo "LC_$RESULT" > RESULT.txt

HEADER_NAME="$NEW_NAME.hpp"
SOURCE_NAME="$NEW_NAME.cpp"

echo "Source name: $SOURCE_NAME"
echo "Header name: $HEADER_NAME"

cp TEMPLATE.hpp.tmpl $HEADER_NAME
cp TEMPLATE.cpp.tmpl $SOURCE_NAME

sed -i "s/TEMPLATE/$NEW_NAME/g" $HEADER_NAME
sed -i "s/TEMPLATE/$NEW_NAME/g" $SOURCE_NAME