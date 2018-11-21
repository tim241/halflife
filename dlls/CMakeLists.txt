#
# hldll CMakeLists.txt for Linux
#
project(hldll)

# compile options
add_compile_options(${G_COMPILER_OPTIONS} -DCLIENT_WEAPONS)

# all the files
add_library(hldll SHARED
    aflock.cpp
    agrunt.cpp
    airtank.cpp
    animating.cpp
    animation.cpp
    apache.cpp
    barnacle.cpp
    barney.cpp
    bigmomma.cpp
    bloater.cpp
    bmodels.cpp
    bullsquid.cpp
    buttons.cpp
    cbase.cpp
    client.cpp
    combat.cpp
    controller.cpp
    crossbow.cpp
    crowbar.cpp
    defaultai.cpp
    doors.cpp
    effects.cpp
    egon.cpp
    explode.cpp
    flyingmonster.cpp
    func_break.cpp
    func_tank.cpp
    game.cpp
    gamerules.cpp
    gargantua.cpp
    gauss.cpp
    genericmonster.cpp
    ggrenade.cpp
    globals.cpp
    gman.cpp
    h_ai.cpp
    h_battery.cpp
    h_cine.cpp
    h_cycler.cpp
    h_export.cpp
    handgrenade.cpp
    hassassin.cpp
    headcrab.cpp
    healthkit.cpp
    hgrunt.cpp
    hornet.cpp
    hornetgun.cpp
    houndeye.cpp
    ichthyosaur.cpp
    islave.cpp
    items.cpp
    leech.cpp
    lights.cpp
    maprules.cpp
    monstermaker.cpp
    monsters.cpp
    monsterstate.cpp
    mortar.cpp
    mp5.cpp
    nihilanth.cpp
    nodes.cpp
    observer.cpp
    osprey.cpp
    pathcorner.cpp
    plane.cpp
    plats.cpp
    player.cpp
    python.cpp
    rat.cpp
    roach.cpp
    rpg.cpp
    satchel.cpp
    schedule.cpp
    scientist.cpp
    scripted.cpp
    shotgun.cpp
    skill.cpp
    sound.cpp
    soundent.cpp
    spectator.cpp
    squadmonster.cpp
    squeakgrenade.cpp
    subs.cpp
    talkmonster.cpp
    teamplay_gamerules.cpp
    multiplay_gamerules.cpp
    singleplay_gamerules.cpp
    tempmonster.cpp
    tentacle.cpp
    triggers.cpp
    tripmine.cpp
    turret.cpp
    util.cpp
    weapons.cpp
    world.cpp
    xen.cpp
    zombie.cpp
    wpn_shared//hl_wpn_glock.cpp
    ../pm_shared/pm_shared.c
	../pm_shared/pm_math.c
    ../pm_shared/pm_debug.c
    ../game_shared/voice_gamemgr.cpp
)

# include directories
target_include_directories(hldll PRIVATE .)
target_include_directories(hldll PRIVATE ../pm_shared/)

# Change output filename to hl.so
set_target_properties(hldll PROPERTIES OUTPUT_NAME "hl" PREFIX "")

# Change linker flags
set_target_properties(hldll PROPERTIES LINK_FLAGS "${G_LINKER_OPTIONS} -lm -lstdc++")


