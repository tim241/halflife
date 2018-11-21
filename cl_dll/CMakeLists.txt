#
# hl_cdll CMakeLists.txt for Linux
#
project(hl_cdll)

# compile options
add_compile_options(${G_COMPILER_OPTIONS})
add_compile_options(-DCLIENT_DLL -DCLIENT_WEAPONS -DHL_DLL -D_snwprintf=swprintf)
add_compile_options(-DDISABLE_JUMP_ORIGIN -DDISABLE_VEC_ORIGIN)

# all the files
add_library(hl_cdll SHARED
    hud_spectator.cpp
    ev_hldm.cpp
    hl/hl_baseentity.cpp
    hl/hl_events.cpp
    hl/hl_objects.cpp
    hl/hl_weapons.cpp
    hud.cpp
    inputw32.cpp
    ammo.cpp
    ammo_secondary.cpp
    ammohistory.cpp
    battery.cpp
    cdll_int.cpp
    com_weapons.cpp
    death.cpp
    demo.cpp
    entity.cpp
    ev_common.cpp
    events.cpp
    flashlight.cpp
    GameStudioModelRenderer.cpp
    geiger.cpp
    health.cpp
    hud_bench.cpp
    hud_benchtrace.cpp
    hud_msg.cpp
    hud_redraw.cpp
    hud_update.cpp
    in_camera.cpp
    input.cpp
    interpolation.cpp
    menu.cpp
    message.cpp
    saytext.cpp
    status_icons.cpp
    statusbar.cpp
    studio_util.cpp
    StudioModelRenderer.cpp
    text_message.cpp
    train.cpp
    tri.cpp
    util.cpp
    view.cpp
    vgui_int.cpp
    vgui_ClassMenu.cpp
    vgui_ConsolePanel.cpp
    vgui_ControlConfigPanel.cpp
    vgui_CustomObjects.cpp
    vgui_MOTDWindow.cpp
    vgui_SchemeManager.cpp
    vgui_ScorePanel.cpp
    vgui_ServerBrowser.cpp
    vgui_TeamFortressViewport.cpp
    vgui_SpectatorPanel.cpp
    vgui_teammenu.cpp
    voice_status.cpp
    hud_servers.cpp
    ../public/interface.cpp
    ../common/parsemsg.cpp
    ../game_shared/vgui_checkbutton2.cpp
	../game_shared/vgui_grid.cpp
	../game_shared/vgui_helpers.cpp
	../game_shared/vgui_listbox.cpp
	../game_shared/vgui_loadtga.cpp
	../game_shared/vgui_scrollbar2.cpp
	../game_shared/vgui_slider2.cpp
    ../game_shared/voice_banmgr.cpp
    ../dlls/crossbow.cpp
	../dlls/crowbar.cpp
	../dlls/egon.cpp
	../dlls/gauss.cpp
	../dlls/handgrenade.cpp
	../dlls/hornetgun.cpp
	../dlls/mp5.cpp
	../dlls/python.cpp
	../dlls/rpg.cpp
	../dlls/satchel.cpp
	../dlls/shotgun.cpp
	../dlls/squeakgrenade.cpp
	../dlls/tripmine.cpp
    ../dlls/wpn_shared/hl_wpn_glock.cpp
    ../pm_shared/pm_debug.c
	../pm_shared/pm_shared.c
    ../pm_shared/pm_math.c
)

# include directories
target_include_directories(hl_cdll PRIVATE .)
target_include_directories(hl_cdll PRIVATE ../utils/vgui/include/)
target_include_directories(hl_cdll PRIVATE ../dlls/)
target_include_directories(hl_cdll PRIVATE ../pm_shared/)


# Change output filename to client.so
set_target_properties(hl_cdll PROPERTIES OUTPUT_NAME "client" PREFIX "")

# Change linker flags
set_target_properties(hl_cdll PROPERTIES LINK_FLAGS "${G_LINKER_OPTIONS}")

# link against vgui.so and libSDL2
target_link_libraries(hl_cdll "-l:vgui.so" "-l:libSDL2-2.0.so.0")

