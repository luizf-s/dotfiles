local builtin = require('telescope.builtin')

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.cmd('colorscheme rose-pine')

vim.g.mapleader = ","

-- nvim
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader><space>", vim.cmd.noh, {})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- telescope
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("grep> ") })
end)

require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "c_sharp", "go", "html", "javascript", "python", "query", "rust", "vim", "vimdoc" },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    use({'rose-pine/neovim', as = 'rose-pine' })

    use({'nvim-treesitter/nvim-treesitter', tag = "v0.8.1", run = ':TSUpdate'})
end)
