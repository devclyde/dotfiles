local xresources = require('beautiful.xresources')
local assets = require('beautiful.theme_assets')

local B16 = require('base16.catppuccin')

local R = {}

R.font = 'JetBrainsMono Nerd Font Medium 12'

R.separator_font = 'JetBrainsMono Nerd Font Thin 10'
R.separator_color = B16.base07

-- CLIENT

R.useless_gap = xresources.apply_dpi(8)

R.border_width = xresources.apply_dpi(3)

R.border_color_normal = B16.base01
R.border_color_active = B16.base05
R.border_color_urgent = B16.base08
R.border_color_new = B16.base07

R.app_title_font = 'JetBrainsMono Nerd Font Medium 12'
R.app_title_font = B16.base07

-- STATUSBAR

R.statusbar_position = 'top'

R.statusbar_background = B16.base00
R.statusbar_foreground = B16.base07

R.statusbar_border_color = B16.base00
R.statusbar_border_width = xresources.apply_dpi(0)

R.statusbar_height = xresources.apply_dpi(32)

R.statusbar_opacity = xresources.apply_dpi(0)

R.statusbar_icon = assets.awesome_icon(xresources.apply_dpi(16), B16.base07, B16.base00)

-- SYSTEM TRAY

R.bg_systray = B16.base00
R.systray_icon_spacing = xresources.apply_dpi(8)

-- TAGLIST

R.taglist_font = 'JetBrainsMono Nerd Font Bold 12'

R.taglist_spacing = 4

R.taglist_bg_focus = B16.base00
R.taglist_bg_urgent = B16.base00
R.taglist_bg_occupied = B16.base00
R.taglist_bg_empty = B16.base00
R.taglist_bg_volatile = B16.base00

R.taglist_fg_focus = B16.base0D
R.taglist_fg_urgent = B16.base08
R.taglist_fg_occupied = B16.base04
R.taglist_fg_empty = B16.base03
R.taglist_fg_volatile = B16.base0A

-- HARDWARE WIDGETS

R.hardware_font = 'JetBrainsMono Nerd Font Bold 12'
R.hardware_spacing = xresources.apply_dpi(4)

R.kernel_color = B16.base0F
R.cpu_color = B16.base0E
R.ram_color = B16.base0D
R.disk_color = B16.base0C
R.net_color = B16.base0B
R.pkg_color = B16.base0A
R.time_color = B16.base09

return R
