#
# Half-life CMakeLists.txt for Linux
#
# Minimum CMAKE version
cmake_minimum_required(VERSION 3.12)

# Global include directories
INCLUDE_DIRECTORIES(public common engine game_shared)

# Global compile options
set(G_COMPILER_OPTIONS -m32 -fpermissive -fno-strict-aliasing -DNDEBUG -DPOSIX -D_POSIX -DLINUX -D_LINUX -DGNUC -DHL1 -Dstricmp=strcasecmp -D_strnicmp=strncasecmp -Dstrnicmp=strncasecmp -D_snprintf=snprintf -DQUIVER -DQUAKE2 -DVALVE_DLL -D_alloca=alloca -fno-exceptions -fexpensive-optimizations -D_vsnprintf=vsnprintf -DNO_MALLOC_OVERRIDE -Werror=return-type -DLINUX -D_LINUX -w -DDEDICATED -DSWDS)

# Global linker options
set(G_LINKER_OPTIONS "-m32 -shared -g2 -gdwarf-2 -g2")

# Strip on Release builds
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -s")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -s")

# Global path for libraries
LINK_DIRECTORIES(linux)

# hldll
add_subdirectory(dlls)

# hl_cdll
add_subdirectory(cl_dll)

# dmcdll
add_subdirectory(dmc/dlls)

# dmc_cdll
add_subdirectory(dmc/cl_dll)

# ricochetdll
add_subdirectory(ricochet/dlls)

# ricochet_cdll
add_subdirectory(ricochet/cl_dll)