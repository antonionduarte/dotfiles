-- Plugin Manager - lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{ 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
	"simrat39/rust-tools.nvim",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"junegunn/fzf.vim",
	"folke/trouble.nvim",
	"catppuccin/nvim",
	"junegunn/fzf",
	"folke/todo-comments.nvim",
	"nvim-lualine/lualine.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"numToStr/Comment.nvim",
	"lewis6991/gitsigns.nvim",
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	{ 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	-- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{
		"L3MON4D3/LuaSnip",
		version = "v2.1.0",
		build = "make install_jsregexp"
	},
	{
		"ray-x/go.nvim",
		config = function() require('go').setup() end, 
	},
}

require("lazy").setup(plugins, {})
