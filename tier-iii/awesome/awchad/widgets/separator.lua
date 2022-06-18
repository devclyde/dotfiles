local wibox = require('wibox')
local beautiful = require('beautiful')

local SEPARATOR_WIDGET = wibox.widget({
  text = '|',
  font = beautiful.separator_font,
  widget = wibox.widget.textbox,
})

local SEPARATOR_CONTAINER = {
  SEPARATOR_WIDGET,
  fg = beautiful.separator_color,
  widget = wibox.container.background,
}

return SEPARATOR_CONTAINER
