require("dms.outputs")
require("dms.cursor")
require("dms.windowrules")

hl.config({
    input = {
        kb_layout = "br",
        kb_variant = "abnt2",
        sensitivity = 3.50,
        scroll_factor = 2.5,
        numlock_by_default = true,
        follow_mouse = 1,

        touchpad = {
            natural_scroll = true,
            scroll_factor = 2.5,
        },
    },

    cursor = {
        hide_on_key_press = false,
        no_warps = true,
    },
})

local layouts = { "dwindle", "master", "scrolling", "monocle" }

hl.bind("SUPER + W", function()
    local current = tostring(hl.get_config("general.layout"))
    for i, v in ipairs(layouts) do
        if v == current then
            local next_layout = layouts[(i % #layouts) + 1]
            hl.config({ general = { layout = next_layout } })
            hl.notification.create({
                text = "Layout: " .. next_layout,
                timeout = 2000,
                icon = "ok",
            })
            return
        end
    end
    hl.config({ general = { layout = "dwindle" } })
end)

hl.config({
    decoration = {
        rounding = 7,
        active_opacity = 0.80,
        inactive_opacity = 0.85,

        blur = {
            enabled = true,
            size = 20,
            passes = 3,
            new_optimizations = true,
            xray = false,
            vibrancy = 0.1696,
        },

        shadow = {
            enabled = true,
            range = 15,
            render_power = 2,
            offset = { 0, 5 },
            color = 0x70000000,
        },
    },

    general = {
        gaps_in = 3,
        gaps_out = 5,
        border_size = 2,
        layout = "scrolling",
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
        force_split = 2,
    },

    master = {
        mfact = 0.5,
    },

    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

require("dms.layout")
require("noctalia.noctalia-colors")
require("hyprland-gui")
require("dms.binds")

hl.env("WLR_DRM_NO_ATOMIC", "1")
hl.env("WLR_RENDERER_ALLOW_SOFTWARE", "1")
hl.env("AMD_VULKAN_ICD", "RADV")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("XDG_MENU_PREFIX", "arch-")



hl.on("hyprland.start", function()
    hl.exec_cmd("kbuildsycoca6")
    hl.exec_cmd("numlockx on")
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user start hyprland-session.target")
    hl.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/mount_drive.sh")
    hl.exec_cmd("hyprctl setcursor macOS 24")
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
    hl.exec_cmd("qs -c noctalia-shell")
end)
