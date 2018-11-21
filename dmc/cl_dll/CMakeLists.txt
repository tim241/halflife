#
# dmc_cdll CMakeLists.txt for Linux
#
project(dmc_cdll)

# compile options
add_compile_options(${G_COMPILER_OPTIONS})
add_compile_options(-DCLIENT_DLL -DDMC_BUILD -D_snwprintf=swprintf) 
add_compile_options(-DDISABLE_JUMP_ORIGIN -DDISABLE_VEC_ORIGIN -D_MAX_PATH=PATH_MAX)

# all the files
add_library(dmc_cdll SHARED
    ev_common.cpp
    CTF_FlagStatus.cpp
    CTF_HudMessage.cpp
    DMC_Teleporters.cpp
    ev_hldm.cpp
    quake/quake_baseentity.cpp
    quake/quake_events.cpp
    quake/quake_objects.cpp
    quake/quake_weapons.cpp
    studio_util.cpp
    vgui_SpectatorPanel.cpp
    ammo.cpp
    ammo_secondary.cpp
    ammohistory.cpp
    battery.cpp
    cdll_int.cpp
    com_weapons.cpp
    death.cpp
    demo.cpp
    entity.cpp
    events.cpp
    GameStudioModelRenderer.cpp
    geiger.cpp
    health.cpp
    hud.cpp
    hud_msg.cpp
    hud_redraw.cpp
    hud_spectator.cpp
    hud_update.cpp
    hud_servers.cpp
    in_camera.cpp
    input.cpp
    inputw32.cpp
    menu.cpp
    message.cpp
    saytext.cpp
    status_icons.cpp
    statusbar.cpp
    StudioModelRenderer.cpp
    text_message.cpp
    train.cpp
    tri.cpp
    util.cpp
    view.cpp
    voice_status.cpp
    vgui_int.cpp
    vgui_ScorePanel.cpp
    vgui_ServerBrowser.cpp
    vgui_viewport.cpp
    vgui_CustomObjects.cpp
    vgui_MOTDWindow.cpp
    vgui_SchemeManager.cpp
    ../dlls/quake_weapons_all.cpp
    ../dlls/quake_gun.cpp
    ../../public/interface.cpp
    ../../common/parsemsg.cpp
    ../../game_shared/voice_banmgr.cpp
    ../../game_shared/vgui_checkbutton2.cpp
    ../../game_shared/vgui_grid.cpp
    ../../game_shared/vgui_helpers.cpp
    ../../game_shared/vgui_listbox.cpp
    ../../game_shared/vgui_loadtga.cpp
    ../../game_shared/vgui_scrollbar2.cpp
    ../../game_shared/vgui_slider2.cpp
    ../pm_shared/pm_debug.c
    ../pm_shared/pm_shared.c
    ../pm_shared/pm_math.c
)

# include directories
#target_include_directories(dmc_cdll PRIVATE .)
target_include_directories(dmc_cdll PRIVATE ../../utils/vgui/include/)
target_include_directories(dmc_cdll PRIVATE ../dlls/)
target_include_directories(dmc_cdll PRIVATE ../pm_shared)
target_include_directories(dmc_cdll PRIVATE ../cl_dll)

# Change output filename to dmc_client.so
set_target_properties(dmc_cdll PROPERTIES OUTPUT_NAME "dmc_client" PREFIX "")

# Change linker flags
set_target_properties(dmc_cdll PROPERTIES LINK_FLAGS "${G_LINKER_OPTIONS}")

# link against vgui.so and libSDL2
target_link_libraries(dmc_cdll "-l:vgui.so" "-l:libSDL2-2.0.so.0")