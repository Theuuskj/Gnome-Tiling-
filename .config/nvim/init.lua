--MADE BY DARLINGI/THEUUSKJ
--use packer.
require('packer').startup(function(use)
use 'goolord/alpha-nvim'
use { 'catppuccin/nvim', as = 'catppuccin' }
end)


require("catppuccin").setup({
  flavour = "mocha", 
  transparent_background = true, 
  term_colors = true, 
  integrations = {
    alpha = true, 
    telescope = true,
    nvimtree = true, 
    
  },
})

-- Aplicando o tema
vim.cmd.colorscheme("catppuccin")

-- Configurando o Alpha (tela inicial)
local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
  [[                                                                   ]],
  [[       ███████████           █████      ██                     ]],
  [[      ███████████             █████                             ]],
  [[      █████████ ███████████████████ ███   ███████     ]],
  [[     █████████  ███     ████████████ █████ ██████████████   ]],
  [[    █████████ ███████ █████████████ █████ █████ ████ █████   ]],
  [[  ███████████ ███    ███████████████ █████ █████ ████ █████  ]],
  [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],

}

dashboard.section.buttons.val = {
  dashboard.button("f", "󰈞 Find file", ":Telescope find_files<CR>"),
  dashboard.button("n", " New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("r", "󰥔 Recent files", ":Telescope oldfiles<CR>"),
  dashboard.button("c", "  Config", ":e $MYVIMRC<CR>"),
  dashboard.button("q", " Quit", ":qa<CR>"),
}
dashboard.section.footer.val = "By Darlingi 󰣇"

alpha.setup(dashboard.opts)


vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = "#7BA2F6", bg = "NONE" })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = "#7BA2F6", bg = "NONE" })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = "#7BA2F6", bg = "NONE" })


vim.opt.termguicolors = true
