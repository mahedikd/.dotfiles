local M = {}

M.config = function()
	local status_ok, matchup = pcall(require, "vim-matchup")
	if not status_ok then
		return
	end
	require("nvim-treesitter.configs").setup({
		matchup = {
			enable = true, -- mandatory, false will disable the whole extension
			disable = { "c", "ruby" }, -- optional, list of language that will be disabled
		},
	})
	vim.g.matchup_matchparen_offscreen = { method = "popup" }
end

return M
