#
# dmcdll CMakeLists.txt for Linux
#
project(dmcdll)

# compile options
add_compile_options(${G_COMPILER_OPTIONS})

# all the files
add_library(dmcdll SHARED
    animating.cpp
	animation.cpp
    bmodels.cpp
    buttons.cpp
    cbase.cpp
    client.cpp
	combat.cpp
	doors.cpp
	effects.cpp
	explode.cpp
	func_break.cpp
	func_tank.cpp
	game.cpp
	gamerules.cpp
	globals.cpp
	h_ai.cpp
	h_export.cpp
	lights.cpp
	maprules.cpp
	monsters.cpp
	monsterstate.cpp
	multiplay_gamerules.cpp
	nodes.cpp
	observer.cpp
	pathcorner.cpp
	plane.cpp
	plats.cpp
	player.cpp
	quake_gun.cpp
	quake_items.cpp
	quake_nail.cpp
	quake_player.cpp
	quake_rocket.cpp
	quake_weapons_all.cpp
	schedule.cpp
	singleplay_gamerules.cpp
	skill.cpp
	sound.cpp
	spectator.cpp
	subs.cpp
	teamplay_gamerules.cpp
	threewave_gamerules.cpp
	triggers.cpp
	util.cpp
	weapons.cpp
	world.cpp
    ../pm_shared/pm_shared.c
	../pm_shared/pm_math.c
    ../pm_shared/pm_debug.c
    ../../game_shared/voice_gamemgr.cpp
)

# include directories
target_include_directories(dmcdll PRIVATE .)
target_include_directories(dmcdll PRIVATE ../pm_shared)


# Change output filename to dmc.so
set_target_properties(dmcdll PROPERTIES OUTPUT_NAME "dmc" PREFIX "")

# Change linker flags
set_target_properties(dmcdll PROPERTIES LINK_FLAGS "${G_LINKER_OPTIONS}")