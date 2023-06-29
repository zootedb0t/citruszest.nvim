local M = {}

local pallet = require("citruszest.palettes.colors")

if vim.g.citruszestTransparent then
	pallet.background = "NONE"
end

local editor_highlight = require("citruszest.highlights").theme(pallet)

M.set_highlight = function()
	-- Set highlight
	for group, colors in pairs(editor_highlight) do
		vim.api.nvim_set_hl(0, group, colors)
	end
end

return M
