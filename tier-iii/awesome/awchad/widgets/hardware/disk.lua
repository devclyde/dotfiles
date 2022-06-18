local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local DISK_WIDGET = wibox.widget({
  font = beautiful.hardware_font,
  widget = wibox.widget.textbox,
})

local DISK_CONTAINER = {
  DISK_WIDGET,
  fg = beautiful.disk_color,
  widget = wibox.container.background,
}

vicious.register(DISK_WIDGET, vicious.widgets.fs, ' disk: ${/ avail_gb}G free', 5)

return DISK_CONTAINER
