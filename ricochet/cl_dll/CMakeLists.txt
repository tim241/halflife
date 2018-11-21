#
# ricochet_cdll CMakeLists.txt for Linux
#
project(ricochet_cdll)

# compile options
add_compile_options(${G_COMPILER_OPTIONS})
add_compile_options(-DCLIENT_DLL -D_snwprintf=swprintf)
add_compile_options(-DDISABLE_JUMP_ORIGIN -DDISABLE_VEC_ORIGIN -D_MAX_PATH=PATH_MAX)

# all the files
add_library(ricochet_cdll SHARED
    ev_common.cpp
    ev_hldm.cpp
    hl/hl_baseentity.cpp
    hl/hl_events.cpp
    hl/hl_objects.cpp
    hl/hl_weapons.cpp
    Ricochet_JumpPads.cpp
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
    flashlight.cpp
    GameStudioModelRenderer.cpp
    geiger.cpp
    health.cpp
    hud.cpp
    hud_msg.cpp
    hud_redraw.cpp
    hud_servers.cpp
    hud_update.cpp
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
    vgui_int.cpp
    vgui_ConsolePanel.cpp
    vgui_ControlConfigPanel.cpp
    vgui_CustomObjects.cpp
    vgui_discobjects.cpp
    vgui_MOTDWindow.cpp
    vgui_ScorePanel.cpp
    vgui_ServerBrowser.cpp
    vgui_TeamFortressViewport.cpp
    vgui_SchemeManager.cpp
    studio_util.cpp
    voice_status.cpp
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
    ../dlls/wpn_shared/disc_weapon_disc.cpp
)

# include directories
target_include_directories(ricochet_cdll PRIVATE ../../utils/vgui/include/)
target_include_directories(ricochet_cdll PRIVATE ../dlls/)
target_include_directories(ricochet_cdll PRIVATE ../pm_shared)
target_include_directories(ricochet_cdll PRIVATE ../cl_dll)

# Change output filename to client_ricochet.so
set_target_properties(ricochet_cdll PROPERTIES OUTPUT_NAME "client_ricochet" PREFIX "")

# Change linker flags
set_target_properties(ricochet_cdll PROPERTIES LINK_FLAGS "${G_LINKER_OPTIONS}")

# link against vgui.so and libSDL2
target_link_libraries(ricochet_cdll "-l:vgui.so" "-l:libSDL2-2.0.so.0")