#/bin/bash

echo $DART_DEFINE | tr ',' '\n' | while read line; 
do
  echo $line | base64 -d | tr ',' '\n' | xargs -I@ bash -c "echo @ | grep 'FLAVOR' | sed 's/.*=//'"
done | (
  read flavor
  echo "#include \"$flavor.xcconfig\"" > $SRCROOT/Flutter/DartDefine.xcconfig
)