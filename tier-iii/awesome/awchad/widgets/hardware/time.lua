local wibox = require('wibox')
local beautiful = require('beautiful')

local TIME_WIDGET = wibox.widget({
  format = ' %b %d %Y %H:%M',
  font = beautiful.hardware_font,
  widget = wibox.widget.textclock,
})

local TIME_WIDGET = {
  TIME_WIDGET,
  fg = beautiful.time_color,
  widget = wibox.container.background,
}

return TIME_WIDGET
