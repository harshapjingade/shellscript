#!/bin/sh
for f in $1;
do
if [ -d $f ]
then
cd "$f"
project_name=$( basename "$PWD" )
  if grep $2 pom.xml;
  then
  linenumber=`grep -n "$2" pom.xml | cut -d':' -f1`
  startlinenumbertodelete=`head -n $linenumber pom.xml| grep -n "<dependency>" | tail -1 | cut -d':' -f1`
  templastlinenumbertodelete=`tail -n +$linenumber pom.xml | grep -n "</dependency>"| head -1 | cut -d':' -f1 `
  lastlinenumbertodelete=`expr "$linenumber" + "$templastlinenumbertodelete" - 1`
  sed -i -e "${startlinenumbertodelete},${lastlinenumbertodelete}d" pom.xml
   echo "in $project_name, $2 deleted"  >> /home/harsp/report.txt
  else
  echo "in $project_name, $2 is not found"  >> /home/harsp/report.txt
  fi
fi
don
