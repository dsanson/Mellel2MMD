#!/bin/bash

new=`echo "$1" | sed s/mellel$/pandoc/g`

if [ -f "$1/main.xml" ]
	then xsltproc -o "$new" "mellel2pandoc.xsl" "$1/main.xml"
	else gunzip -c "$1/main.xml.gz" | xsltproc -o "$new" "mellel2pandoc.xsl" -
fi
