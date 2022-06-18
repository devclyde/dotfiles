pcall(require, 'luarocks.loader')

AWCHAD_MODIFIER = 'Mod4'

local ok, result = pcall(require, 'awchad')

if not ok then
  error("Couldn't initialise AwChad!\n\n" .. result)
end
