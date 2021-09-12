lvim.leader = "space"
-- treesitter
local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
parser_configs.http = {
	install_info = {
		url = "https://github.com/NTBBloodbath/tree-sitter-http",
		files = { "src/parser.c" },
		branch = "main",
	},
}
-- lvim specific ---------------------------------------------------
lvim.builtin.treesitter.rainbow = {
	enable = true,
	extended_mode = true,
}
lvim.builtin.dashboard.active = true
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.side = "left"
lvim.builtin.terminal.active = true
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.colorscheme = "onedarker"
lvim.format_on_save = true
lvim.log.level = "warn"
lvim.lsp.diagnostics.virtual_text = false

lvim.builtin.dashboard.custom_header = {

	"𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ𝘭ᨆ⫯ⲙ𝘭ᨆ⫯ⲙ𝘭ᨆ⫯ⲙ𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ",
	"                                            ",
	"       ██╗    ██╗   ██╗██╗███╗   ███╗       ",
	"       ██║    ██║   ██║██║████╗ ████║       ",
	"       ██║    ╚██╗ ██╔╝██║██╔████╔██║       ",
	"       ██║     ╚████╔╝ ██║██║╚██╔╝██║       ",
	"       ███████╗ ╚██╔╝  ██║██║ ╚═╝ ██║       ",
	"       ╚══════╝  ╚═╝   ╚═╝╚═╝     ╚═╝       ",
	"                                            ",
	"𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ𝘭ᨆ⫯ⲙ𝘭ᨆ⫯ⲙ𝘭ᨆ⫯ⲙ𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ𝘭𝓿⫯ⲙ𝘭ᨆ⫯ⲙ",
}

lvim.builtin.dashboard.custom_section = {
	a = { description = { "  New File           " }, command = "DashboardNewFile" },
	b = { description = { "  Find File          " }, command = "Telescope find_files" },
	c = { description = { "  Recent Projects    " }, command = "Telescope projects" },
	d = { description = { "  Recently Used Files" }, command = "Telescope oldfiles" },
	e = { description = { "  Find Word          " }, command = "Telescope live_grep" },
	f = { description = { "  Settings           " }, command = ":e ~/.config/lvim/config.lua" },
	g = { description = { "  Git Status         " }, command = "Telescope git_status" },
	h = { description = { "  Zshrc              " }, command = ":e ~/.config/zsh/zshrc" },
	i = { description = { "  Kitty Config       " }, command = ":e ~/.config/kitty/kitty.conf" },
	-- f = { description = { "  Marks              " }, command = "Telescope marks" },
	-- f = {description = {"  Neovim Config Files"}, command = "Telescope find_files cwd=" .. CONFIG_PATH, },
	-- h = {description = {"  File Browser       "}, command = "Telescope file_browser" },
	-- i = {description = {"  Load Last Session  "}, command = "SessionLoad"},
	-- j = {description = {"  Ranger             "}, command = "RnvimrToggle"},
}

local colors = {
	color2 = "#0f1419",
	color3 = "#ffee99",
	color4 = "#e6e1cf",
	color5 = "#14191f",
	color13 = "#b8cc52",
	color10 = "#36a3d9",
	color8 = "#f07178",
	color9 = "#3e4b59",
}

lvim.builtin.lualine.options.theme = {
	normal = {
		c = { fg = colors.color9, bg = colors.color2 },
		a = { fg = colors.color2, bg = colors.color10, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	insert = {
		a = { fg = colors.color2, bg = colors.color13, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	visual = {
		a = { fg = colors.color2, bg = colors.color3, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	replace = {
		a = { fg = colors.color2, bg = colors.color8, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	inactive = {
		c = { fg = colors.color4, bg = colors.color2 },
		a = { fg = colors.color4, bg = colors.color5, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
}

lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_z = { "progress" }

-- Additional Plugins --------------------------------------------------
lvim.plugins = {
	{ "felipec/vim-sanegx", event = "BufRead" },
	{ "metakirby5/codi.vim", cmd = "Codi" },
	{ "ThePrimeagen/vim-be-good", cmd = "VimBeGood" },
	{ "lambdalisue/suda.vim", cmd = "SudaWrite" },
	{ "tpope/vim-repeat" },
	{
		"p00f/nvim-ts-rainbow",
	},
	{
		"npxbr/glow.nvim",
		cmd = "Glow",
		ft = { "markdown" },
	},
	-- Todo comments.
	-- FIX:Something to describe.
	-- FIXME: Something to describe.
	-- BUG:Something to describe.
	-- FIXIT: Something to describe.
	-- ISSUE: Something to describe.
	-- TODO:Something to describe.
	-- HACK:Something to describe.
	-- WARN:Something to describe.
	-- WARNING:Something to describe.
	-- XXX:Something to describe.
	-- PERF:Something to describe.
	-- OPTIM:Something to describe.
	-- PERFORMANCE:Something to describe.
	-- OPTIMIZE:Something to describe.
	-- NOTE:Something to describe.
	-- INFO:Something to describe.
	-- TEST: Test something.
	-- OK: Something.
	-- ISH: Something.
	-- BAD: Something.
	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("user.todo-comments").config()
		end,
	},
	{
		"turbio/bracey.vim",
		cmd = { "Bracey", "BracyStop", "BraceyReload", "BraceyEval" },
		run = "npm install --prefix server",
	},
	{
		"tpope/vim-fugitive",
		cmd = {
			"G",
			"Git",
			"Gdiffsplit",
			"Gread",
			"Gwrite",
			"Ggrep",
			"GMove",
			"GDelete",
			"GBrowse",
			"GRemove",
			"GRename",
			"Glgrep",
			"Gedit",
		},
		ft = { "fugitive" },
	},
	{
		"folke/twilight.nvim",
		cmd = "Twilight",
		config = function()
			require("user.twilight").config()
		end,
	},
	{
		"ethanholz/nvim-lastplace",
		event = "BufRead",
		config = function()
			require("user.lastplace").config()
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"phaazon/hop.nvim",
		event = "BufRead",
		config = function()
			require("user.hop").config()
		end,
	},
	{
		"monaqa/dial.nvim",
		event = "BufRead",
		config = function()
			require("user.dial").config()
		end,
	},
	{
		"nacro90/numb.nvim",
		event = "BufRead",
		config = function()
			require("user.numb").config()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("user.colorizer").config()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("user.blankline")
		end,
	},
	{
		"andymass/vim-matchup",
		event = "CursorMoved",
		config = function()
			require("user.matchup").config()
		end,
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("user.neoscroll").config()
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		config = function()
			require("user.lsp_signature").config()
		end,
	},
	{
		"tpope/vim-surround",
		event = "BufRead",
	},
	{
		"jghauser/mkdir.nvim",
		config = function()
			require("mkdir")
		end,
	},
	{
		"aserowy/tmux.nvim",
		config = function()
			require("user.tmux").config()
		end,
	},
	{
		"NTBBloodbath/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		-- event = "BufRead *.http",
		config = function()
			require("user.rest").config()
		end,
		ft = "http",
	},
	{
		"folke/persistence.nvim",
		event = "VimEnter",
		module = "persistence",
		config = function()
			require("persistence").setup({
				dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
				options = { "buffers", "curdir", "tabpages", "winsize" },
			})
		end,
	},
}
-- language specific setup -----------------------------------------
lvim.lang.javascript.formatters = { { exe = "prettier" } }
lvim.lang.typescript.formatters = lvim.lang.javascript.formatters
lvim.lang.javascriptreact.formatters = lvim.lang.javascript.formatters
lvim.lang.typescriptreact.formatters = lvim.lang.javascript.formatters
-- lvim.lang.javascript.linters = { { exe = "eslint" } }
-- lvim.lang.javascriptreact.linters = lvim.lang.javascript.linters
-- lvim.lang.typescript.linters = lvim.lang.javascript.linters
-- lvim.lang.typescriptreact.linters = lvim.lang.javascript.linters

lvim.lang.css.formatters = { { exe = "prettier" } }
-- lvim.lang.emmet.active = true
lvim.lang.html.formatters = { { exe = "prettier" } }
lvim.lang.json.formatters = { { exe = "prettier" } }
lvim.lang.lua.formatters = { { exe = "stylua" } }
lvim.lang.yaml.formatters = { { exe = "prettier" } }

-- vim defalts -----------------------------------------------------
vim.opt.wrap = true
vim.opt.cursorline = false
vim.opt.history = 1000
vim.opt.lazyredraw = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.timeoutlen = 300
vim.opt.cmdheight = 1
vim.opt.undodir = CACHE_PATH .. "/undodir"
vim.opt.undofile = true
vim.opt.foldmethod = "manual" -- expr for auto folding
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- keybindings -----------------------------------------------------
vim.api.nvim_set_keymap("n", "<S-l>", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>", ":BufferPrevious<CR>", { noremap = true, silent = true })
lvim.keys.normal_mode = {
	-- Navigate buffers
	["<Tab>"] = ":bnext<CR>",
	["<S-Tab>"] = ":bprevious<CR>",
	["<C-s>"] = ":w<cr>",
	-- Goto buffer in position
	["<A-1>"] = ":BufferGoto 1<CR>",
	["<A-2>"] = ":BufferGoto 2<CR>",
	["<A-3>"] = ":BufferGoto 3<CR>",
	["<A-4>"] = ":BufferGoto 4<CR>",
	["<A-5>"] = ":BufferGoto 5<CR>",
	["<A-6>"] = ":BufferGoto 6<CR>",
	["<A-7>"] = ":BufferGoto 7<CR>",
	["<A-8>"] = ":BufferGoto 8<CR>",
	["<A-9>"] = ":BufferLast<CR>",
	["<A-p>"] = ":BufferPin<CR>",
	["<A-c>"] = ":BufferClose<CR>",
	-- Re-order to previous/next
	["<A-,>"] = ":BufferMovePrevious<CR>",
	["<A-.>"] = ":BufferMoveNext<CR>",
	-- Misc
	["yf"] = ":let @+=expand('%:p')<CR>",
	["yd"] = ":let @+=expand('%:p:h')<CR>",
	-- Moving text
	-- ["<A-j>"] = ":m .+1<cr>",
	-- ["<A-k>"] = ":m .-2<cr>",
}
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

lvim.builtin.which_key.mappings[","] = {
	name = "+Custom",
	T = { "<cmd>Twilight<CR>", "Twilight toggle" },
	["-"] = { ":split<CR>", "Split below" },
	["_"] = { ":vsplit<CR>", "Split right" },
	d = { "<C-x>", "Decrement" },
	f = { "<C-w>|<C-w>_", "Full screen markdown preview" },
	i = { "<C-a>", "Increment" },
	l = { "<Plug>RestNvimLast", "RestNvim (run last req)" },
	p = { ":Glow<CR>", "Markdown preview" },
	r = { "<Plug>RestNvim", "RestNvim (send req to current_line)" },
	t = { ":ToggleTerm<CR>", "Open floting terminal" },
	w = { ":SudaWrite<CR>", "Save with sudo" },
}
lvim.builtin.which_key.mappings["Q"] = {
	name = "+Quit",
	s = { "<cmd>lua require('persistence').load()<cr>", "Restore for current dir" },
	l = { "<cmd>lua require('persistence').load(last=true)<cr>", "Restore last session" },
	d = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}
lvim.keys.visual_mode = {
	-- Add quotes around visual selection
	["<leader>'"] = "<esc>`>a'<esc>`<i'<esc>",
	['<leader>"'] = '<esc>`>a"<esc>`<i"<esc>',
	["<leader>("] = "<esc>`>a)<esc>`<i(<esc>",
	["<leader>["] = "<esc>`>a]<esc>`<i[<esc>",
	["<leader>{"] = "<esc>`>a}<esc>`<i{<esc>",
}
vim.cmd([[
    function! TrimWhitespace()
      let l:save = winsaveview()
      keeppatterns %s/\s\+$//e
      call winrestview(l:save)
    endfunction

    augroup trimwhitespace
      autocmd!
      autocmd BufWritePre * :call TrimWhitespace()
    augroup END

	  nnoremap Y y$
    nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
    nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
    nnoremap n nzzzv
    nnoremap N Nzzzv
    nnoremap J mzJ`z
    nnoremap cn *``cgn
    nnoremap cN *``cgN

    inoremap , ,<c-g>u
    inoremap . .<c-g>u
    inoremap ! !<c-g>u
    inoremap ? ?<c-g>u
]])
