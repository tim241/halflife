Half-Life 1
======================

This is the README for the Half-Life 1 engine and its associated games.

This fork has a few additional features/enhancements

* CMake build system
* C++ Fixes for GCC

Compiling
======================
```
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc)
```

Installing
======================
```
./linux/scripts/install.sh build/ dir/to/half/life/
```