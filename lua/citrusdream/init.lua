local M = {}

local config = require("citrusdream.options")
local pallet = require("citrusdream.palettes.colors")

---@param opts table?
M.setup = function(opts)
  -- Load user config
  config:extend(opts)
end

M.set_highlight = function()
  vim.cmd("hi clear") -- Clear highlights

  if vim.fn.exists("syntax on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "citrusdream"

  local user_config = config.extended

  pallet.background = "NONE"

  -- Override default highlight with user config
  local highlight_groups = vim.tbl_deep_extend(
    "force",
    require("citrusdream.highlights").theme(pallet, config.extended.option),
    user_config.style
  )

  -- Set highlight
  for group, colors in pairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

return M
