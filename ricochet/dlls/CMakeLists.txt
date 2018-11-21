#
# ricochetdll CMakeLists.txt for Linux
#
project(ricochetdll)

# compile options
add_compile_options(${G_COMPILER_OPTIONS})

# all the files
add_library(ricochetdll SHARED
    airtank.cpp
    animating.cpp
    animation.cpp
    bmodels.cpp
    buttons.cpp
    cbase.cpp
    client.cpp
    combat.cpp
    disc_arena.cpp
    disc_powerups.cpp
    doors.cpp
    effects.cpp
    explode.cpp
    func_break.cpp
    func_tank.cpp
    game.cpp
    gamerules.cpp
    ggrenade.cpp
    globals.cpp
    h_ai.cpp
    h_battery.cpp
    h_cycler.cpp
    h_export.cpp
    healthkit.cpp
    items.cpp
    lights.cpp
    maprules.cpp
    mortar.cpp
    mpstubb.cpp
    multiplay_gamerules.cpp
    observer.cpp
    pathcorner.cpp
    plane.cpp
    plats.cpp
    player.cpp
    singleplay_gamerules.cpp
    skill.cpp
    sound.cpp
    soundent.cpp
    spectator.cpp
    subs.cpp
    teamplay_gamerules.cpp
    triggers.cpp
    util.cpp
    weapons.cpp
    world.cpp
    xen.cpp
    wpn_shared/disc_weapon_disc.cpp
    ../pm_shared/pm_shared.c
    ../pm_shared/pm_math.c
    ../pm_shared/pm_debug.c
    ../../game_shared/voice_gamemgr.cpp
)

# include directories
target_include_directories(ricochetdll PRIVATE .)
target_include_directories(ricochetdll PRIVATE ../pm_shared)


# Change output filename to ricochet.so
set_target_properties(ricochetdll PROPERTIES OUTPUT_NAME "ricochet" PREFIX "")

# Change linker flags
set_target_properties(ricochetdll PROPERTIES LINK_FLAGS "${G_LINKER_OPTIONS}")