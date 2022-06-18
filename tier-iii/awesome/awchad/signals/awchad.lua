local awful = require('awful')
local gears = require('gears')
local beautiful = require('beautiful')
local config = require('awchad.config')

awesome.connect_signal('awchad::pre_setup', function()
  -- Enable auto focus
  require('awful.autofocus')
  -- Enable hotkeys help widget for VIM and other apps
  -- when client with a matching name is opened:
  require('awful.hotkeys_popup.keys')

  beautiful.init(require('awchad.theme'))
end)

awesome.connect_signal('awchad::post_setup', function()
  -- Run garbage collector regularly to prevent memory leaks
  gears.timer({
    timeout = 30,
    autostart = true,
    callback = function()
      collectgarbage()
    end,
  })

  -- Run autostart apps
  if config.autostart then
    for _, app in ipairs(config.autostart) do
      local args = ''

      if app.args then
        for _, arg in ipairs(app.args) do
          args = args .. ' ' .. arg
        end
      end

      awful.spawn.with_shell(app.path .. ' ' .. args)
    end
  end

  -- Change the wallpaper every 15 minutes
  gears.timer({
    timeout = 5, -- 900
    autostart = true,
    callback = function()
      for s in screen do
        s:emit_signal('request::wallpaper')
      end
    end,
  })
end)
