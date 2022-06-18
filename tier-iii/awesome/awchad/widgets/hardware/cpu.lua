local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local CPU_WIDGET = wibox.widget({
  font = beautiful.hardware_font,
  widget = wibox.widget.textbox,
})

local CPU_CONTAINER = {
  CPU_WIDGET,
  fg = beautiful.cpu_color,
  widget = wibox.container.background,
}

vicious.register(CPU_WIDGET, vicious.widgets.cpu, '  cpu: ($1%)', 5)

return CPU_CONTAINER
