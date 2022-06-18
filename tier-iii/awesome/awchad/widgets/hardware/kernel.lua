local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local KERNEL_WIDGET = wibox.widget({
  font = beautiful.hardware_font,
  widget = wibox.widget.textbox,
})

local KERNEL_CONTAINER = {
  KERNEL_WIDGET,
  fg = beautiful.kernel_color,
  widget = wibox.container.background,
}

vicious.register(KERNEL_WIDGET, vicious.widgets.os, ' $2')

return KERNEL_CONTAINER
