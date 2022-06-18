require('awchad.signals.awchad')

awesome.emit_signal('awchad::pre_setup')

require('awchad.signals.naughty')
require('awchad.signals.client')
require('awchad.signals.ruled')
require('awchad.signals.tag')
require('awchad.signals.screen.wallpaper')
require('awchad.signals.screen.desktop')

require('awchad.mappings.mouse')

require('awchad.mappings.keyboard.general')
require('awchad.mappings.keyboard.workspaces')
require('awchad.mappings.keyboard.focus')
require('awchad.mappings.keyboard.layout')
require('awchad.mappings.keyboard.other')

awesome.emit_signal('awchad::post_setup')
