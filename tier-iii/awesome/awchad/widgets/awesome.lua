local beautiful = require('beautiful')
local wibox = require('wibox')

local AWESOME_ICON_WIDGET = wibox.widget({
  image = beautiful.statusbar_icon,
  resize = false,
  widget = wibox.widget.imagebox,
})

local AWESOME_ICON_CONTAINER = {
  {
    AWESOME_ICON_WIDGET,
    margins = 8,
    layout = wibox.container.margin,
  },
  valign = 'center',
  halign = 'center',
  widget = wibox.container.place,
}

return AWESOME_ICON_CONTAINER
