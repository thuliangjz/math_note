require('plugins')

vim.g.maplocalleader = '\''
vim.g.mapleader = ';'
vim.cmd([[
    set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    filetype off
    set hlsearch
    set number
    set mouse=
    imap <leader>s <Esc>:w<CR>i
]])
vim.cmd[[colorscheme tokyonight]]

-- keymaps for init.lua
vim.cmd([[
    map <leader>si :source ~/.config/nvim/init.lua<cr>
    map <leader>oi :e ~/.config/nvim/init.lua<cr>
]])

-- keymap for floaterm
-- tmap stands for terminal-space
-- see https://github.com/voldikss/vim-floaterm for more directives
vim.cmd([[
    nmap <leader>t :FloatermToggle<CR>
    tmap <Esc> <C-\><C-n>:q<CR>
    tmap <leader>n <C-\><C-n>:FloatermNext<CR>
    tmap <leader>p <C-\><C-n>:FloatermPrev<CR>
    tmap <leader>t <C-\><C-n>:FloatermNew<CR>
]])

-- vimtex configuration
vim.cmd([[
    filetype plugin indent on
    syntax enable
    let g:vimtex_view_method='general'
    nmap <leader>lc :!./clean.sh<CR>
    nmap <leader>lt :!ctags-universal -R *.tex<CR>
    nmap <leader>lv :GetTexFileInfo<CR>
    nmap <leader>lb :VimtexCompile<CR>
]])

-- printout line and column numbers of current file
vim.api.nvim_create_user_command('GetTexFileInfo', 
    function()
        local r,c = unpack(vim.api.nvim_win_get_cursor(0))
        local tex_name = vim.fn.expand('%')
        local f = io.open("synctex_forward", "w")
        f:write(string.format("%s,%d,%d", tex_name, r, c))
        f:close()
    end,
    {}
)
