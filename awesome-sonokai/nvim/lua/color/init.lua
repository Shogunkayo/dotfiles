local sonokai_custom = function()
  -- Link a highlight group to a predefined highlight group.
  -- See `colors/sonokai.vim` for all predefined highlight groups.
  -- vim.cmd("highlight! link groupA groupB")
  -- vim.cmd("highlight! link groupC groupD")

  -- Initialize the color palette.
  -- The first parameter is a valid value for `g:sonokai_style`,
  -- and the second parameter is a valid value for `g:sonokai_colors_override`.
  local palette = vim.fn["sonokai#get_palette"]("default", {})
  -- Define a highlight group.
  -- The first parameter is the name of a highlight group,
  -- the second parameter is the foreground color,
  -- the third parameter is the background color,
  -- the fourth parameter is for UI highlighting which is optional,
  -- and the last parameter is for `guisp` which is also optional.
  -- See `autoload/sonokai.vim` for the format of `palette`.
  vim.cmd("call sonokai#highlight('groupE', '" .. palette.red .. "', '" .. palette.none .. "', 'undercurl', '" .. palette.red .. "')")
end

vim.cmd([[
augroup SonokaiCustom
  autocmd!
  autocmd ColorScheme sonokai lua sonokai_custom()
augroup END
]])

vim.cmd("colorscheme sonokai")
