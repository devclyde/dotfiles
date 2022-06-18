return {
  apps = {
    terminal_emulator = 'alacritty',
    app_launcher = 'rofi -show drun',
    command_prompt = 'rofi -show run',
    screen_capture = 'flameshot gui',
  },
  autostart = {
    {
      path = '/sbin/flameshot',
    },
  },
  workspaces = {
    tags = { 'home', 'www', 'dev', 'term', 'chat', 'music' },
    initial_layout_index = 1,
  },
  look_and_feel = {
    wallpapers = {
      path = os.getenv('HOME') .. '/.local/share/wallpapers',
      upscale = true,
      downscale = true,
    },
  },
}
