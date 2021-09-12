local M = {}

M.config = function()
	local status_ok, todo = pcall(require, "todo-comments")
	if not status_ok then
		return
	end
	todo.setup({
		keywords = {
			OK = { icon = "✔ ", color = "ok" },
			ISH = { icon = "☛ ", color = "ish" },
			BAD = { icon = "✘ ", color = "bad" },
			TEST = { icon = "⚖ ", color = "test" },
		},
		colors = {
			ok = { "#10B981" },
			ish = { "#e0e031" },
			bad = { "#f06981" },
			test = { "#f02244" },
		},
	})
end
return M
