local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local NET_WIDGET = wibox.widget({
  font = beautiful.hardware_font,
  widget = wibox.widget.textbox,
})

local NET_CONTAINER = {
  NET_WIDGET,
  fg = beautiful.net_color,
  widget = wibox.container.background,
}

vicious.register(NET_WIDGET, vicious.widgets.net, ' ${enp2s0 up_kb}kb  ${enp2s0 down_kb}kb', 5)

return NET_CONTAINER
