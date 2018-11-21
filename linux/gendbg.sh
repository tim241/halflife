#!/bin/bash

UNAME=`uname`

STRIP=strip
OBJCOPY=objcopy

function usage {
	echo "$0 [-c=release] /path/to/input/file"
	echo ""
}

if [ $# == 0 ]; then
	usage
	exit 2
fi

CFG=debug

for arg in $@
do
	case $arg in
		-c=*|--config=*)
			OPTARG="${arg/-c=/}"
			OPTARG="${OPTARG/--config=/}"
			CFG="$OPTARG"
			shift
			;;
	esac
done

if [ $(basename $1) == $1 ]; then
	INFILEDIR=$PWD
else
	INFILEDIR=$(cd ${1%/*} && echo $PWD)
fi
INFILE=$(basename $1)
OUTFILEDIR=$INFILEDIR

if [ ! "$OUTFILE" ]; then
	OUTFILE=$INFILE.dbg
fi

if [ "$CFG" = "release" ]; then
	exit 0
fi

if [ "$OUTFILEDIR" != "$INFILEDIR" ]; then
	INFILE=${INFILEDIR}/${INFILE}
	OUTFILE=${OUTFILEDIR}/${OUTFILE}
fi

pushd "$INFILEDIR"
$OBJCOPY "$INFILE" "$OUTFILE"
$OBJCOPY --add-gnu-debuglink="$OUTFILE" "$INFILE"
popd

