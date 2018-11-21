#!/usr/bin/env bash
set -e

if [ ! "$2" ]; then
    echo "$0 [dir/to/build/] [dir/to/half/life]"
    echo ""
fi

build_dir="$1"
target_dir="$2"

if [ ! -d "$build_dir" ] || \
    [ ! -d "$target_dir" ]
then
    exit 1
fi

cd "$build_dir"

if [ -d "$target_dir/valve/" ]; then
    echo "--> installing Half-Life libraries"
    cp dlls/hl.so       "$target_dir/valve/dlls/hl.so"
    cp cl_dll/client.so "$target_dir/valve/cl_dlls/client.so"
fi

if [ -d "$target_dir/dmc/" ]; then
    echo "--> installing Deathmatch Classic libraries"
    cp dmc/dlls/dmc.so          "$target_dir/dmc/dlls/dmc.so"
    cp dmc/cl_dll/dmc_client.so "$target_dir/dmc/cl_dlls/client.so"
fi

if [ -d "$target_dir/ricochet/" ]; then
    echo "--> installing Ricochet libraries"
    cp ricochet/dlls/ricochet.so          "$target_dir/ricochet/dlls/ricochet.so"
    cp ricochet/cl_dll/client_ricochet.so "$target_dir/ricochet/cl_dlls/client.so"
fi

echo "--> Completed"
exit 0