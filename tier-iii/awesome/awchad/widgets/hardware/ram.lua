local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local RAM_WIDGET = wibox.widget({
  font = beautiful.hardware_font,
  widget = wibox.widget.textbox,
})

local RAM_CONTAINER = {
  RAM_WIDGET,
  fg = beautiful.ram_color,
  widget = wibox.container.background,
}

vicious.register(RAM_WIDGET, vicious.widgets.mem, ' ram: $2M ($1%)', 5)

return RAM_CONTAINER
