local awful = require('awful')
local gears = require('gears')
local wibox = require('wibox')
local beautiful = require('beautiful')
local config = require('awchad.config')

screen.connect_signal('request::wallpaper', function(screen)
  local wallpapers = config.look_and_feel.wallpapers.path
  local wallpaper = nil

  local is_dir = gears.filesystem.is_dir(wallpapers)
  local is_table = type(wallpapers) == 'table'

  if is_table then
    wallpaper = wallpapers[math.random(1, gears.table.count_keys(wallpapers))]
  elseif is_dir then
    wallpaper = gears.filesystem.get_random_file_from_dir(wallpapers, { 'jpg', 'png' }, true)
  else
    wallpaper = wallpapers
  end

  awful.wallpaper({
    screen = screen,
    widget = {
      {
        image = wallpaper or beautiful.wallpaper,
        upscale = config.look_and_feel.wallpapers.upscale or true,
        downscale = config.look_and_feel.wallpapers.downscale or true,
        widget = wibox.widget.imagebox,
      },

      valign = 'center',
      halign = 'center',
      tiled = false,
      widget = wibox.container.tile,
    },
  })
end)
