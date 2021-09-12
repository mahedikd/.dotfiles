local M = {}

M.config = function()
	local status_ok, tmux = pcall(require, "tmux")
	if not status_ok then
		return
	end
	tmux.setup({
		copy_sync = {
			enable = false,
			redirect_to_clipboard = true,
		},
		navigation = {
			enable_default_keybindings = true,
		},
		resize = {
			enable_default_keybindings = true,
		},
	})
end

return M
