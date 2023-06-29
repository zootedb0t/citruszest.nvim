local M = {}

local pallet = require("citruszest.palettes.colors")
local config = require("citruszest.options").options

function M.setup(opts)
	opts = opts or {}
	config = vim.tbl_deep_extend("force", config, opts)
end

M.set_highlight = function()
	vim.cmd("hi clear") -- Clear highlights
	if vim.fn.exists("syntax on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true

	M.setup()

	if config.transparent then
		pallet.background = "NONE"
	end

	local editor_highlight = require("citruszest.highlights").theme(pallet)

	-- Set highlight
	for group, colors in pairs(editor_highlight) do
		vim.api.nvim_set_hl(0, group, colors)
	end
end

return M
