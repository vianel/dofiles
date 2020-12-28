"VIM Configuration - Vianel Rodriguez
" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim
set nocompatible
call pathogen#infect() "Use pathonge as plugin manager
"--Display
set title "Update the title of your window or your terminal
set number "Display line numbers
set ruler "Display cursor position
set wrap "Wrap lines when they are too long

set scrolloff=3 "Display at least 3 lines around your cursos

set guioptions=T "Enable the toolbar

"--Search
set ignorecase "Ignore case when searching
set smartcase "If there is an uppercase in your search term searc case sensitive again
set incsearch "Highlight searc results when typing
set hlsearch "Highlight search results

"-- Beep
set visualbell "Prevent Vim from beeping
set noerrorbells "Prevent Vim from beeping

"Backspace behaves as expected
set backspace=indent,eol,start

"Hide buffer (file) instead of abandoning whe switching to another buffer
set hidden

"Enable syntax highlighting
syntax enable
colorscheme onedark

"Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

"Used monaco font
set guifont=Monaco:h15
set antialias

"----------------
" Autocomplete
"----------------
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Alternatives for ESC Key
:imap jj <Esc>
:imap jk <Esc>
:imap ii <Esc>
:imap ` <Esc>
:imap <S-Space> <Esc>
:imap <M-Space> <Esc>

"Defining Leader key for lusty explorer

let mapleader = ","

"ACK configuration

let g:ackprg = "ack -H --nocolor --nogroup --column"

nmap <leader>j mA:Ack<space>
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

"----------------
" vim-go
"----------------
let g:go_fmt_command = 'goimports'
let g:go_list_type = 'quickfix'
let g:go_rename_command = 'gopls'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_enabled = ['vet', 'golint']

"Vim Terraform
let g:terraform_align=1

let g:terraform_fmt_on_save=1

"Vim Pyhton
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
