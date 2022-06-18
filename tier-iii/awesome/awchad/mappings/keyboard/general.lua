local awful = require('awful')
local hotkeys_popup = require('awful.hotkeys_popup')

local config = require('awchad.config')

-- General Mappings
awful.keyboard.append_global_keybindings({
  awful.key({ AWCHAD_MODIFIER }, 's', hotkeys_popup.show_help, {
    description = 'show help',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'r', awesome.restart, {
    description = 'reload awesome',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'q', awesome.quit, {
    description = 'quit awesome',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'd', function()
    awful.spawn(config.apps.app_launcher)
  end, {
    description = 'run app launcher',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'x', function()
    awful.spawn(config.apps.command_prompt)
  end, {
    description = 'run command prompt',
    group = 'launcher',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'Return', function()
    awful.spawn(config.apps.terminal_emulator)
  end, {
    description = 'open a terminal',
    group = 'launcher',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'Print', function()
    awful.spawn(config.apps.screen_capture)
  end),
})
