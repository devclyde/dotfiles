local wibox = require('wibox')
local beautiful = require('beautiful')

local GREETER_WIDGET = wibox.widget({
  font = beautiful.greeter_font,
  text = 'you will die',
  widget = wibox.widget.textbox,
})

local GREETER_CONTAINER = {
  {
    GREETER_WIDGET,
    fg = beautiful.greeter_color,
    widget = wibox.container.background,
  },
  valign = 'center',
  halign = 'center',
  layout = wibox.container.place,
}

return GREETER_CONTAINER
