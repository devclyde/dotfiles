local awful = require('awful')
local wibox = require('wibox')
local gears = require('gears')
local beautiful = require('beautiful')
local config = require('awchad.config')

local widget_hardware__kernel = require('awchad.widgets.hardware.kernel')
local widget_hardware__cpu = require('awchad.widgets.hardware.cpu')
local widget_hardware__ram = require('awchad.widgets.hardware.ram')
local widget_hardware__disk = require('awchad.widgets.hardware.disk')
local widget_hardware__net = require('awchad.widgets.hardware.net')
local widget_hardware__time = require('awchad.widgets.hardware.time')
local widget_hardware__pkg = require('awchad.widgets.hardware.pkg')

local widget_separator = require('awchad.widgets.separator')

local widget_awesome_icon = require('awchad.widgets.awesome')
local widget_greeter = require('awchad.widgets.greeter')

screen.connect_signal('request::desktop_decoration', function(screen)
  awful.tag(config.workspaces.tags, screen, awful.layout.layouts[config.workspaces.initial_layout_index])

  screen.workspaces = awful.widget.taglist({
    screen = screen,
    filter = awful.widget.taglist.filter.all,
    buttons = {
      awful.button({}, 1, function(tag)
        tag:view_only()
      end),
      awful.button({ AWCHAD_MODIFIER }, 1, function(tag)
        if client.focus then
          client.focus:move_to_tag(tag)
        end
      end),
      awful.button({}, 3, awful.tag.viewtoggle),
      awful.button({ AWCHAD_MODIFIER }, 3, function(tag)
        if client.focus then
          client.focus:toggle_tag(tag)
        end
      end),
      awful.button({}, 4, function(tag)
        awful.tag.viewprev(tag.screen)
      end),
      awful.button({}, 5, function(tag)
        awful.tag.viewnext(tag.screen)
      end),
    },
  })

  screen.statusbar = awful.wibar({
    screen = screen,
    position = beautiful.statusbar_position,
    height = beautiful.statusbar_height,
    bg = beautiful.statusbar_background,
    fg = beautiful.statusbar_foreground,
    widget = {
      layout = wibox.layout.align.horizontal,
      {
        layout = wibox.layout.fixed.horizontal,
        widget_awesome_icon,
        widget_separator,
        screen.workspaces,
      },
      widget_greeter,
      {
        {
          widget_hardware__kernel,
          widget_hardware__cpu,
          widget_hardware__ram,
          widget_hardware__disk,
          widget_hardware__net,
          widget_hardware__pkg,
          widget_hardware__time,
          wibox.widget.systray(),

          spacing = 12,
          spacing_widget = {
            {
              text = '|',
              widget = wibox.widget.textbox,
            },
            fg = beautiful.separator_color,
            opacity = 0.5,
            widget = wibox.container.background,
          },
          layout = wibox.layout.fixed.horizontal,
        },
        margins = 8,
        layout = wibox.container.margin,
      },
    },
  })
end)
