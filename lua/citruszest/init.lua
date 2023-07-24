local M = {}

local config = require("citruszest.options")
local pallet = require("citruszest.palettes.colors")
local highlight_groups = {}

function M.setup(opts)
  config:extend(opts)

  local user_config = config.extended

  if user_config.transparent then
    pallet.background = "NONE"
  end

  highlight_groups = vim.tbl_deep_extend(
    "force",
    require("citruszest.highlights").theme(pallet, config.extended.italic),
    user_config.style
  )
end

M.set_highlight = function()
  vim.cmd("hi clear") -- Clear highlights
  if vim.fn.exists("syntax on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true

  M.setup()

  -- Set highlight
  for group, colors in pairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

return M
