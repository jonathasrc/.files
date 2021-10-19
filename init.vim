call plug#begin()
" themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
" Status and tab bar TODO:Config
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git integrations
Plug 'tpope/vim-fugitive' "TODO: Read doc
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse TODO read doc and config
Plug 'airblade/vim-gitgutter' "TODO read doc and config

" Auto commplete and language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

"
"" DEvicons for trees and bars
Plug 'ryanoasis/vim-devicons'

Plug 'majutsushi/tagbar' "TODO read doc and config

" Show the visual mark on indentation blocks 
Plug 'Yggdroot/indentLine'

" Syntax highlight
Plug 'sheerun/vim-polyglot'         

"Multiple cursosr semelhante ao sublime <c-n> + c
Plug 'terryma/vim-multiple-cursors' 

" Fuzzy search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder <c-p>. Verificar doc para instalar dependencias 
" telescope nvim 
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

" Useful commenting - gcc, gcap
Plug 'tpope/vim-commentary'

" snippets
" Plug 'SirVer/ultisnips' "Track the engine
Plug 'honza/vim-snippets' 

"Auto-complete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs' 


" Linter
Plug 'w0rp/ale'

"Plug 'dense-analysis/ale', { 'do': 'pip install flake8 isort yapf' } "Lint

" Python formatting
Plug 'ambv/black' "TODO read a doc

" Manipulate surrounding chars such as quotes and brackets
Plug 'tpope/vim-surround'

" Auto complete navigation with tab
" Plug 'ervandew/supertab'

" Align tables
Plug 'godlygeek/tabular'

" Explorer plugin
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

"Plug 'wakatime/vim-wakatime' "Gerenciamento de tempo de uso em projects


" Markdown editing and preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'gabrielelana/vim-markdown'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"Plug tpope/vim-markdown

"Scroll fast
" Plug 'wfxr/code-minimap'
" Plug 'wfxr/minimap.vim'

"Soft or Hard Word Wrapping
Plug 'reedes/vim-pencil' " TODO: ver com urgencia a doc quebra line muito util 

" spell check TODO: verificar com urgencia e configurarar dicionario pt-bt não
" instalado
" http://ftp.vim.org/vim/runtime/spell/
"Plug reedes/vim-lexical

" Apagar ambos quotes nas palavras os comandos ds, cs, yss
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Distraction-free writing in Vim. TODO: não instado 
" Plug 'junegunn/goyo.vim'

" latex
Plug 'lervag/vimtex'

call plug#end()


syntax on
filetype plugin indent on

set nocompatible
set guicursor=
set hidden
set number
set relativenumber
set updatetime=50
set incsearch
set noerrorbells
set scrolloff=8
set noshowmode
set autoread
set hlsearch
set ignorecase
" set nohlsearch
set smartindent
set inccommand=split
set termguicolors
set expandtab
set clipboard+=unnamedplus
set textwidth=80  " lines longer than 79 columns will be broken
set wrap tw=80
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set backspace=indent,eol,start
set fileformats=unix,dos,mac
set cursorline
" set ttymouse=sgr            "Mouse selcetion

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set noswapfile
set nowrap

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

" set colorcolumn=80,100,120
" highlight ColorColumn ctermbg=0 guibg=lighgrey
" highlight Comment ctermbg=red

set mousemodel=popup
set mouse=a
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10
"Use modeline
set modeline
set modelines=10

" set title
" set titleold="Terminal"
" set titlestring=%F
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

set list
set listchars+=tab:>-,space:.

" Set the variables

"" fzf.vim
set wildmode=list:longest,list:full
" set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
" set wildignore+=*.obj,.git,*.rbc,*.pyc,__pycache__
" let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
" let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let python_highlight_all = 1
" let g:polyglot_disabled = ['python', 'markdown', 'mkd',] 

"IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_faster = 1

"themes
let g:gruvbox_contrast_dark='hard'

" vim-airline
let g:airline#extensions#tabline#enabled=1
" let g:airline_powerline_fonts=1
let g:airline_theme="gruvbox"
let g:airline_statusline_ontop=0

let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'

let g:airline#extensions#tabline#formatter='jsformatter'

call airline#parts#define_raw('linenr', '%l')
call airline#parts#define_accent('linenr', 'bold')
let g:airline_section_z = airline#section#create(['%3p%%  ',
            \ g:airline_symbols.linenr .' ', 'linenr', ':%c '])





" format text
" reedes/vim-pencil
let g:pencil#textwidth = 79
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:pencil#autoformat = 1      " 0=disable, 1=enable (def)
let g:pencil#mode_indicators = {'hard': '␍', 'auto': 'ª', 'soft': '⤸', 'off': '',}

" ale
let g:ale_linters = {}
:call extend(g:ale_linters, {
            \'python': ['flake8'], })
let g:ale_disable_lsp = 1
" " Config do coc plugin
" let g:ale_fix_on_save = 1
" let g:ale_fixers = {
" \   'python': [
" \       'isort',
" \       'flake8',
" \       'black',
" \       'yapf',
" \       'remove_trailing_lines',
" \       'trim_whitespace'
" \   ]
" \}


" explorer
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" markdown 
" filetype plugin on
"Uncomment to override defaults:
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 1
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
let g:instant_markdown_python = 1
let g:instant_markdown_browser = "firefox --new-window"


" iamcco/vim-markdown
let g:mkdp_auto_start=0

" themes/color
colorscheme gruvbox
set guifont=DroidSansMono\ Nerd\ Font\ 11
" let ayucolor="mirage"
set background=dark
" Remaps
let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>, A,<esc>
nnoremap <leader>: A:<cr>

" Sweet Sweet FuGITive TODO: verificar a doc deste plug vim-fugitive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" reload config 
nnoremap <leader>sc :source ~/.config/nvim/init.vim<cr> 

"Explorer
"map <F2> <esc>:Vex<cr>
" map <F2> :NERDTreeToggle<CR>


"save
" nnoremap <F12> <esc>:w<cr> 
" inoremap <F12> <esc>:w<cr>

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" split
nnoremap <leader>vE :vsplit ~/.config/nvim/init.vim<cr>
noremap <leader>] :vsplit 
nnoremap <leader>note :vsplit ~/Documents/notebooks/<cr>

" tab
nnoremap <leader>tnote :tabnew ~/Documents/notebooks/<cr>
nnoremap <leader>dp :tabnew ~/Documents/notebooks/data.md<cr>
nnoremap <leader>dp :tabnew ~/Documents/notebooks/data.md<cr>
" create tab
noremap <leader>vn :tabnew 
noremap <leader>vo :tabonly 
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"Define o atalho Ctrl + P para utilizar o fzf fileS
nnoremap <c-p> :Files<cr> 
nnoremap <c-f> :Ag<space><cr>
nnoremap <C-Down> ddp
nnoremap <C-Up> ddkP

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Abrir o terminal 
nnoremap <leader>' :sp term://zsh<cr>

"Comentar linhas usando <leader> + /
"Config do plugin tpope/Commentary
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>

"To use `ALT+{h,j,k,l}` to navigate windows from any mode:
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" tab atalho vim

" Do not use arrows in Normal mode
nnoremap <silent> <Up>    <Nop>
nnoremap <silent> <Down>  <Nop>
nnoremap <silent> <Left>  <Nop>
nnoremap <silent> <Right> <Nop>

"move cursor in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>
nnoremap <Leader>+ :vertical-resize +5<CR>
nnoremap <Leader>- :vertical-resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
" Zoom in em split - [z]oom [in]
" Os comandos padrão para dar zoom em split são:
" - Ctrl + W + _ = Define o split atual com a maior altura possível
" - Ctrl + W + | = Define o split atual com a maior largura possível
" - Ctrl + W + = = Tenta definir todas as janelas com o mesmo tamanho
nnoremap zin <c-w>_ <c-w>\|
" Zoom out - [z]oom [n]ot [i]n
nnoremap zni <c-w>= 


"nohlsearch
nnoremap <leader>ns :nohlsearch<cr>
" nmap <silent> ./ :nohlsearch<CR>

" markdown edit an preview

" iamcco/markdown-preview.nvim
nmap <leader>mp <Plug>MarkdownPreview
nmap <leader>ms <Plug>MarkdownPreviewStop
nmap <leader>mt <Plug>MarkdownPreviewToggle


"

"  autocomplete neoclide
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to foldcurrent buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"integrations airline 
let g:airline#extensions#coc#enabled = 1

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR> 
"

cmap w!! w !sudo tee >/dev/null %

