local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local PKG_WIDGET = wibox.widget({
  font = beautiful.hardware_font,
  widget = wibox.widget.textbox,
})

local PKG_CONTAINER = {
  PKG_WIDGET,
  fg = beautiful.pkg_color,
  widget = wibox.container.background,
}

vicious.register(PKG_WIDGET, vicious.widgets.pkg, '  $1 updates', 3600, 'Arch')

return PKG_CONTAINER
