" >> load plugins
call plug#begin(stdpath('data') . 'vimplug')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'ThePrimeagen/harpoon'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'neoclide/coc.nvim'
    Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
    Plug 'ackyshake/VimCompletesMe'

    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
    Plug 'frazrepo/vim-rainbow'
    " Plug 'vim-airline/vim-airline'

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'nikvdp/neomux'
    Plug 'preservim/tagbar'
    Plug 'ReverentEngineer/vim-junit'

    Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'

    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-test/vim-test'

    Plug 'tomtom/tcomment_vim'

    Plug 'mhinz/vim-startify'
    Plug 'lervag/vimtex'
    Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
    Plug 'puremourning/vimspector'
    Plug 'liuchengxu/vim-which-key'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'scrooloose/nerdcommenter'
    Plug 'preservim/nerdcommenter'
    Plug 'frazrepo/vim-rainbow'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'sirver/ultisnips'
    Plug 'nanozuki/tabby.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'



    " Plug 'godlygeek/tabular'
    " Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }


call plug#end()

colorscheme onedark

" basic settings
syntax on
set syntax=c
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch        " do incremental searching
set visualbell
set expandtab
set tabstop=2
set ruler
set smartindent
set shiftwidth=2
set hlsearch
" set virtualedit=all
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent
" set spell
set spelllang=en_us
set mouse=a  " mouse support
let g:rainbow_active = 1
let g:GitGutterBufferDisable = 1
let g:junit_path_expr
autocmd FileType make setlocal noexpandtab "extremely important if you want to use spaces over tabs"
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
autocmd FileType vim let b:vcm_tab_complete = 'vim'
autocmd FileType markdown,txt setlocal complete+=k/usr/share/dict/words
" let g:vcm_omni_pattern
" let b:vcm_tab_complete
" let b:vcm_tab_complete
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" au FileType * execute 'setlocal dict+=~/.vim/words/'.&filetype.'.txt'
" au FileType * execute 'setlocal dict+=~/.vim/words/10k.txt

"key
inoremap <silent><expr> <tab>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<tab>" :
      \ coc#refresh()

" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
"
" inoremap <esc> <Nop>

nnoremap <tab> :BTags <CR>
inoremap <silent><tab> <C-n>
nnoremap <space>x :wa<cr>
nnoremap <space>z :xa<cr>
nnoremap ,z :xa<cr>
nnoremap <space>q :wq<cr>
nnoremap <nowait><space>s :wa<cr>
nnoremap <space>0 :q!<cr>
imap <nowait><space> <space>
imap <tab> <C-n>
nnoremap - ,
nnoremap \ 0
vmap 1 0
nnoremap 0 $
vmap 0 $
nnoremap <C-y> <Nop>
tnoremap <C-c> <Nop>
nnoremap <nowait><C-y> <C-d>
nnoremap <space>gs :GitGutterBufferToggle<cr>
nnoremap <space>ss :windo set syntax=c<cr>
nnoremap gm :Man <cr>
"------------------------------------------------------------
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
"------------------------------------------------------------
nnoremap <space>\ :Startify <CR>
"------------------------------------------------------------
nnoremap <space>1 :w <CR> :!gcc -g % -o %< && ./%< <CR>
nnoremap <space>C :w <CR> :tabe term://gcc -g % -o %< && ./%< <CR>
nnoremap <space>P :wa <CR> :!python3 % <CR>
nnoremap <space>J :wa <CR> :!javac -g % && java %< <CR>
nnoremap <space>2 :wa <CR> :tabe term://javac -g % && java %< <CR>
map! <F4> :!./%<
map <F7> :w  <CR> :packadd termdebug <CR>
autocmd filetype c nnoremap <F6> :Termdebug %:r<CR><c-w>2j<c-w>L
nnoremap <F2> :below vertical terminal <CR>
nnoremap <space>T :NERDTreeToggle <CR>
nnoremap <space>v :bn <CR>
nnoremap <leader>. :bn <CR>
nnoremap <nowait><space>X :bd <CR>
nnoremap <tab>  :BTags <CR>
nnoremap <space>y :Tagbar <CR>
nnoremap <C-Tab> gt
"------------------------------------------------------------
nnoremap <space>f :Files <CR>
nnoremap <space>e :Vex <CR>
nnoremap <space>j :Lines <CR>
nnoremap <space>k :BCommits <CR>
nnoremap <space>b :tabe <CR>
nnoremap <space>w :vsp <CR>
nnoremap <space>i :split <CR>
nnoremap <space>sy :set spell<cr>
nnoremap <space>sn :set nospell<cr>
nnoremap <silent> <space>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <space>* :exe "resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <space>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <space>_ :exe "resize " . (winwidth(0) * 2/3)<CR>
""------------------------------------------------------------
"Git
""------------------------------------------------------------
nnoremap <space>gt :! git add * <CR> ! git commit -m "%" <CR> ! git push <CR>
nnoremap <space>gb :Git Blame <CR>
nnoremap <space>ga :Git add . <CR>
nnoremap <space>gc :Git commit <CR>
nnoremap <space>gp :Git push <CR>
nnoremap <space>gl :GitGutterLineHighlightToggle <CR>
nnoremap <leader>e :!cat % <CR>
""------------------------------------------------------------
"run
noremap <space>rv :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./program <CR>
""------------------------------------------------------------
nnoremap <space>M :wa <CR> :! make <CR>
nnoremap <space>n :wa <CR> :! make <CR>
nnoremap <M-v> :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./%< <CR>
noremap <space>V :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./program <CR>
nnoremap <space>r :RangerNewTab <CR>
nnoremap <leader>n :noh <CR>
nnoremap <space>ò :noh <CR>
nnoremap <leader>s :set spell <CR>
nnoremap <space>S :mksession! .session.vim <CR>
nnoremap <space>O :so .session.vim <CR>
nnoremap <space>o :so% <CR>
"-----------------------------------------------------------------------------------------------------"
imap <M-b> public class First {<CR>public static void main(String[] args) {<CR>System.out.println("Hello OOP!");<CR>}<CR>}
"Makefile---------------------------------------------------------------------------------------------"
noremap <M-m> :e %:h/Makefile<CR>
imap <M-j> compile:<CR>javac %.java && java %
noremap <M-g> :wa <CR> :!javac % && java %< <CR>
"------------------------------------------------------------
vmap <C-C> "+y
"------------------------------------------------------------
"tagbar
"------------------------------------------------------------
nnoremap yn :TagbarJumpNext <CR>
nnoremap yp :TagbarJumpPrev <CR>
"------------------------------------------------------------
inoremap <C-h> <esc>hi
inoremap <C-j> <esc>ji
inoremap <C-k> <esc>ki
inoremap <C-l> <esc>li

inoremap " ""<left>
inoremap " ""<left>
" inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap { {}<left>
inoremap ` ``````<left><left><left>
inoremap ~ ~~~~<left><left>
inoremap ° **<left>
inoremap °° ****<left><left>
inoremap § ```mermaid<cr>graph LR<cr>  a -->b<cr>```
inoremap <M-i> ![image](support/){width=70%}<left><left><left><left><left><left><left><left><left><left><left><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"airline_________________________________________________________________________________
let g:airline_theme='violet'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" TABLINE:

" let g:airline_section_a = airline#section#create([''])

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 0           " enable airline tabline
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr = 1       " disable tab numbers
let g:airline#extensions#tabline#show_tab_type = 1     " disables the weird ornage arrow on the tabline
let g:airline#extensions#hunks#enabled=0               " git
let g:airline_powerline_fonts = 1
" the separator used on the left side
let g:airline_left_sep=''
" the separator used on the right side
let g:airline_right_sep=''

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.dirty='⚡'
set laststatus=2

"tmux
set background=dark
set t_Co=256
"
noremap <silent> <space> :WhichKey '<Space>'<CR>

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

set cursorline
tnoremap <Esc> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> <C-\><C-n>:q!<CR>
tnoremap <C-c> <C-\><C-n>

" set leader key to ,
let g:mapleader=","

" >> Telescope bindings
nnoremap <space>pp <cmd>lua require'telescope.builtin'.builtin{}<CR>

" most recently used files
nnoremap <space>m <cmd>lua require'telescope.builtin'.oldfiles{}<CR>

" find buffer
nnoremap ; <cmd>lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <space>j <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <space>' <cmd>lua require'telescope.builtin'.marks{}<CR>

" git files
nnoremap <space>f <cmd>lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <space>h <cmd>lua require'telescope.builtin'.find_files{}<CR>

" ripgrep like grep through dir
nnoremap <space>rg <cmd>lua require'telescope.builtin'.live_grep{}<CR>

" pick color scheme
nnoremap <space>cs <cmd>lua require'telescope.builtin'.colorscheme{}<CR>

"snipp"
" NOTE: You can use other key to expand snippet.

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

"Commets______________________________________________________________________________________
" >> setup nerdcomment key bindings
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" xnoremap <Leader>cc <cmd>call nerdcommenter#Comment('n', 'toggle')<CR>
" xnoremap <Leader>cu <cmd>call nerdcommenter#Comment('n', 'toggle')<CR>
" vnoremap <Leader>cu <cmd>call nerdcommenter#Comment('n', 'toggle')<CR>
" nnoremap <Leader>cc <cmd>call nerdcommenter#Comment('n', 'toggle')<CR>
" nnoremap <Leader>cu <cmd>call nerdcommenter#Comment('n', 'toggle')<CR>
" vnoremap <Leader>cu <cmd>call nerdcommenter#Comment('n', 'toggle')<CR>

" >> Lsp key
" bindings_____________________________________________________________________________________
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
 " let g:compe.source.tabnine = v:true

"Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

nnoremap <space>du :call vimspector#Launch()<CR>
nnoremap <F5> :call vimspector#Launch()<CR>
nnoremap <space>dx :VimspectorReset<CR>
nnoremap <space>de :VimspectorEval
nnoremap <space>dw :VimspectorWatch
nnoremap <space>do :VimspectorShowOutput
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

" Debugger remaps
nnoremap <space>. :MaximizerToggle!<CR>
" nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <F8> <Plug>VimspectorStepInto
" nmap <leader>dj <Plug>VimspectorStepOver
nmap <F10> <Plug>VimspectorStepOver
" nmap <leader>dk <Plug>VimspectorStepOut
nmap <F12> <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
" nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <F9> <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

"Toggle terminal"
"-----------------------------------------------------------------------------------------------------"
let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


nnoremap <space>tt :call Term_toggle(10)<cr>
tnoremap <leader>tt <C-\><C-n>:call Term_toggle(10)<cr>

noremap <space>m  :wa <CR> <C-\><C-n>:tabe term://make<CR>
nnoremap <silent> <space>gg :wa <CR> :LazyGit<CR>
noremap <silent> <space> :WhichKey '<Space>'<CR>
noremap <silent> <leader> :WhichKey ','<CR>
nnoremap <silent> <space>g :WhichKey 'g'<CR>

"markdown
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337

" the browser to use, can also be firefox, chrome or other, depending on your executable
let g:livedown_browser = "firefox"

""Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

"markdown"
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
"
" lua << EOF
"     require'compe'.register_source('words', require'compe_words')
"     require'compe'.setup {
"       default_pattern = [[\d\@!\k\k\{-\}\>]],
"       source = {
"         path = true;
"         buffer = { menu = '[B]'; priority = 51; }; -- slightly higher than snippets
"         nvim_lsp = true;
"         ultisnips = { menu = '[US]' };
"         tags = { menu = '[T]' };
"         words = true;
"       };
"     }
" EOF

" lua <<EOF
" require("lsp")
" require("treesitter")
" " require("statusbar")
" require("completion")
" " require("colors")
" require("compe_words")
" require("completion")
" " require("highlights")
" " require("icons")
" " require("ui")
" EOF
"
" function! OpenCompletion()
"     if !pumvisible() && ((v:char >= 'a' && v:char <= 'z') || (v:char >= 'A' && v:char <= 'Z'))
"         call feedkeys("\<C-x>\<C-o>", "n")
"     endif
" endfunction
"
" autocmd InsertCharPre * call OpenCompletion()
"
" set dictionary={~/.config/coc/extensions/node_modules/coc-word/10k.txt}
"
" function! Smart_TabComplete()
"   let line = getline('.')                         " current line
"
"   let substr = strpart(line, -1, col('.')+1)      " from the start of the current
"                                                   " line to one character right
"                                                   " of the cursor
"   let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
"   if (strlen(substr)==0)                          " nothing to match on empty string
"     return "\<tab>"
"   endif
"   let has_period = match(substr, '\.') != -1      " position of period, if any
"   let has_slash = match(substr, '\/') != -1       " position of slash, if any
"   if (!has_period && !has_slash)
"     return "\<C-X>\<C-P>"                         " existing text matching
"   elseif ( has_slash )
"     return "\<C-X>\<C-F>"                         " file matching
"   else
"     return "\<C-X>\<C-O>"                         " plugin matching
"   endif
" endfunction
"
" set completeopt+=longest
"
" let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
" let g:SuperTabDefaultCompletionType = "context"
"
"
function! JavaStartDebugCallback(err, port)
  execute "cexpr! 'Java debug started on port: " . a:port . "'"
  call vimspector#LaunchWithSettings({ "configuration": "Java Attach", "AdapterPort": a:port })
endfunction

function JavaStartDebug()
  call CocActionAsync('runCommand', 'vscode.java.startDebugSession', function('JavaStartDebugCallback'))
endfunction

nmap <F1> :call JavaStartDebug()<CR>

nmap <F1> :CocCommand java.debug.vimspector.start<CR>

" packadd quickscope

" execute 'luafile ' . stdpath('config') . '/lua/settings.lua'
"
function! s:manageEditorSize(...)
    let count = a:1
    let to = a:2
    for i in range(1, count ? count : 1)
        call VSCodeNotify(to == 'increase' ? 'workbench.action.increaseViewSize' : 'workbench.action.decreaseViewSize')
    endfor
endfunction

function! s:vscodeCommentary(...) abort
    if !a:0
        let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
        return 'g@'
    elseif a:0 > 1
        let [line1, line2] = [a:1, a:2]
    else
        let [line1, line2] = [line("'["), line("']")]
    endif

    call VSCodeCallRange("editor.action.commentLine", line1, line2, 0)
endfunction

function! s:openVSCodeCommandsInVisualMode()
    normal! gv
    let visualmode = visualmode()
    if visualmode == "V"
        let startLine = line("v")
        let endLine = line(".")
        call VSCodeNotifyRange("workbench.action.showCommands", startLine, endLine, 1)
    else
        let startPos = getpos("v")
        let endPos = getpos(".")
        call VSCodeNotifyRangePos("workbench.action.showCommands", startPos[1], endPos[1], startPos[2], endPos[2], 1)
    endif
endfunction

function! s:openWhichKeyInVisualMode()
    normal! gv
    let visualmode = visualmode()
    if visualmode == "V"
        let startLine = line("v")
        let endLine = line(".")
        call VSCodeNotifyRange("whichkey.show", startLine, endLine, 1)
    else
        let startPos = getpos("v")
        let endPos = getpos(".")
        call VSCodeNotifyRangePos("whichkey.show", startPos[1], endPos[1], startPos[2], endPos[2], 1)
    endif
endfunction

" Better Navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>

" Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
xnoremap <expr> <C-/> <SID>vscodeCommentary()
nnoremap <expr> <C-/> <SID>vscodeCommentary() . '_'

nnoremap <silent> <C-w>_ :<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

nnoremap <silent> <leader> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <leader> :<C-u>call <SID>openWhichKeyInVisualMode()<CR>

xnoremap <silent> <C-P> :<C-u>call <SID>openVSCodeCommandsInVisualMode()<CR>

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

" Simulate same TAB behavior in VSCode
nmap <Tab> :Tabnext<CR>
nmap <S-Tab> :Tabprev<CR>
