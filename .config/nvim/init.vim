" Yong Jie's init.vim for Neovim, 2021.05.01

" -----------------------------------------------------------------------------
" Machine-Specific Configurations
" -----------------------------------------------------------------------------

" yjPluginDir is where the plugins will be installed.
" E.g., "/home/yongjie/.local/share/nvim/plugged"
let yjPluginDir='/Users/tandeningklement/.config/nvim/plugged'


" -----------------------------------------------------------------------------
" init.vim
" -----------------------------------------------------------------------------

" For no particular reason.
echo " ಠ_ಠ"
nnoremap <space>( :echo " ಠ_ಠ"<cr>


" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------
" Plugins are managed using vim-plug (available at
" https://github.com/junegunn/vim-plug).
"
" Follow the instructions at the link above to install vim-plug. As at the
" date of this document, the instructions are as follows:
" - For Neovim:
"   - Unix, Linux:
"     sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
"   - Linux (Flatpak):
"     curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \
"         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"   - Windows (PowerShell):
"     iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
"         ni "$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim" -Force

" Plugins are listed between the plug#begin and plug#end function calls.
" - Run :PlugInstall to install the plugins. Note that certain plugins have other
"   prerequisites that must be satisfied before running :PlugInstall. For
"   example, 'juneguun/fzf' requires yarn to be installed on the system.
" - The directory in the plug#begin function is where the plugins will be
"   installed. This will very likely need to be changed for different
"   operating system.
call plug#begin(yjPluginDir)

" Enable running of Go commands directly from Vim (e.g., :GoRun, :GoBuild).
" After installing the plugin, run :GoInstallBinaries to install the Go binaries.
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Add language server protocal support.
" Individual language needs to be set up separately. Please google for the
" instructions as appropriate.
Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }

" Basic modern theme.
Plug 'gruvbox-community/gruvbox'


" IntelliJ's default dark theme (Darcula), so people think I'm using IntelliJ.
" TODO: Use lightline with darcula theme as recommended by the "doumns/darcula"
" author: https://github.com/doums/darcula
Plug 'doums/darcula'


" Show a status line to clearly delineates vertical splits.
Plug 'rbong/vim-crystalline'

" Show number of matches and current match index for operations like *.
Plug 'google/vim-searchindex'

" Add fuzzy search for various actions within Vim (e.g., edit files, switching
" buffers).
" Prerequisites: yarn
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Allow opening some of CocList in fzf
Plug 'antoinemadec/coc-fzf' 

" For better workflow when using Git in certain cases. For example, :Git blame
" shows the output in two vertical splits, and the syntax highlight for the
" source file remains.
Plug 'tpope/vim-fugitive'

" Add to the GBrowse command from vim-fugitive ability to open GitLab links.
Plug 'shumphrey/fugitive-gitlab.vim'
" For managing Git branches with FZF from within Vim.
Plug 'stsewd/fzf-checkout.vim'

" For easy toggling of comments (e.g., with keybinding gcc)
Plug 'tpope/vim-commentary'

" For easy manipulation of quotes / brackes (e.g., with ysiw')
Plug 'tpope/vim-surround'

" For sensible bracket-related key mappings (e.g., [a ]a to move around
" argslist, [q ]q to move around quickfix list)
Plug 'tpope/vim-unimpaired'

" For showing changed lines based on git
Plug 'airblade/vim-gitgutter'

" For typescript development, based on excellent article at
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim.
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" For Javascript syntax highlighting (reccommended by vim-jsx-pretty)
Plug 'yuezk/vim-js'
" For Dart syntax highlighting
Plug 'dart-lang/dart-vim-plugin'

" For jsx indentation
Plug 'maxmellon/vim-jsx-pretty'

" For auto-closing of parens and related features
Plug 'jiangmiao/auto-pairs'

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
" Modifies GBrowse command added by tpope/vim-fugitive to open bitbucket links
Plug 'tommcdo/vim-fubitive'
" For typescript development, based on excellent article at
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim.
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
" For using neovim to edit all textareas in browser.
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'mbbill/undotree'

Plug 'google/vim-maktaba'
Plug 'google/vim-codereview'

" Code formatter
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'


Plug 'jackguo380/vim-lsp-cxx-highlight'

" Latex
Plug 'lervag/vimtex'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'honza/vim-snippets'
Plug 'neomake/neomake'



" Markdown
Plug 'JamshedVesuna/vim-markdown-preview'

" Harpoon
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'

" oscyank
Plug 'ojroques/vim-oscyank', {'branch': 'main'}

call plug#end()

call glaive#Install()
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java --add-exports jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED --add-exports jdk.compiler/com.sun.tools.javac.file=ALL-UNNAMED --add-exports jdk.compiler/com.sun.tools.javac.parser=ALL-UNNAMED --add-exports jdk.compiler/com.sun.tools.javac.tree=ALL-UNNAMED --add-exports jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED -jar /Users/tandeningklement/codes/Dependency/google-java-format-1.11.0-all-deps.jar"

" Use space as the leader key. Putting this at the top of file so it occurs
" before any keymappings that uses <leader>.
let mapleader=' '


" -------------------------------------------------------------------------------------------------
" Additional coc extensions
" -------------------------------------------------------------------------------------------------

let g:coc_global_extensions = [ 'coc-flutter', 'coc-explorer', 'coc-tsserver', 'coc-go', 'coc-java', 'coc-json' ]

" -----------------------------------------------------------------------------
" coc.nvim default settings
" -----------------------------------------------------------------------------
" Adapted from https://octetz.com/docs/2019/2019-04-24-vim-as-a-go-ide/.

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics (e.g., errors)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocFzfList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocFzfList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>

" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Show code actions for current buffer
nmap <leader>ac <Plug>(coc-codeaction)
" Show code actions for current line
nmap <leader>a. <Plug>(coc-codeaction-line)
" Show code actions for current selection
vmap <leader>a <Plug>(coc-codeaction-selected)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" disable vim-go :GoDef short-cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" disable vim-go :GoDoc short-cut (K)
" this is handled by the custom show_documentation() function below, which
" uses the LanguageClient [LC]
let g:go_doc_keywordprg_enabled = 0

" configure vim-go to use goimports (instead of gofmt) to format Go files on
" save
let g:go_fmt_command = "goimports"

" configure vim-markdown
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1

" configure vimtex from https://jdhao.github.io/2019/03/26/nvim_latex_write_preview/

autocmd FileType tex let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
call neomake#configure#automake('w')

let g:vimtex_view_method = "skim"
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '--shell-escape -r @line @pdf @tex'
let g:tex_flavor = 'latex'

augroup vimtex_mac
    autocmd!
    autocmd User VimtexEventCompileSuccess call UpdateSkim()
augroup END

function! UpdateSkim() abort
    let l:out = b:vimtex.out()
    let l:src_file_path = expand('%:p')
    let l:cmd = [g:vimtex_view_general_viewer, '-r']

    if !empty(system('pgrep Skim'))
    call extend(l:cmd, ['-g'])
    endif

    call jobstart(l:cmd + [line('.'), l:out, l:src_file_path])
endfunction
" -------------------------------------------------------------------------------------------------
" Colors and Theme
" -------------------------------------------------------------------------------------------------

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)

" colorscheme onedark
colorscheme gruvbox 


" -----------------------------------------------------------------------------
" Quality-of-Life
" -----------------------------------------------------------------------------

set encoding=UTF-8

" Set no swap file
set noswapfile

" Set relative number
set relativenumber

" Expand folds by default
set foldlevel=99

" Wrap only at word boundaries.
set linebreak

" Ignore case when searching.
set ignorecase

" Don't ignore case when searching if search term contains uppercase
" character(s).
set smartcase

" When line are wrapped, moves by displaye line instead of actual lines.
map j gj
map k gk

" Don't redraw while executing macros (for performance).
set lazyredraw

" Enable undo even after file is closed.
set undofile

" Highilght current line.
set cursorline

" Allow buffer containing modified file to be hidden.
set hidden

" Spelling

set spell
set spelllang=en

"-----------------------------------------------------------------------------
" Formatters
" -----------------------------------------------------------------------------
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  " autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

"-----------------------------------------------------------------------------
" Keymappings
" -----------------------------------------------------------------------------
"  Toggle focus
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Manage tabs
nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext<CR>
nnoremap <Leader>q :tabclose<CR>

" Copy file path to clipboard
nnoremap <leader>yf :let @* = expand("%:p")<cr>

" Copy selected to clipboard
vnoremap <leader>y :OSCYank<CR>

noremap <Leader>Y "+y

" Open file browser
nnoremap <silent> <space>e  :<C-u>CocCommand explorer<cr>

" Switch to previous buffer.
nnoremap <silent> <Leader><Leader> :b#<CR>

" List buffers (for switching).
"nnoremap <Leader>b :ls<CR>:b
" Start fuzzy search for opened buffers, requires vim-fzf plugin.
nnoremap <silent> <Leader>b :Buffers!<CR>

" List history (for searching).
"nnoremap <Leader>h :<C-f>?
" Start fuzzy search for command history, requires vim-fzf plugin.
autocmd FileType c,cpp,h nnoremap <silent> <Leader>h :<C-u>CocCommand clangd.switchSourceHeader<CR>
autocmd FileType c,cpp,h nnoremap <silent> <Leader>f :<C-u>FormatCode<CR>

autocmd FileType tex  nnoremap <silent> <C-p> :<C-u>VimtexCompile<CR>

autocmd FileType python let b:coc_root_patterns = ['.git', '.env']


" Clear search highlight.
noremap <silent> <Leader><CR> :nohlsearch<CR>

" Start fuzzy search for files, requires vim-fzf plugin.
nnoremap <silent> <Leader>z :Files!<CR>

" Start fuzzy search for files not excluded by .gitignore, requires vim-fzf plugin.
nnoremap <silent> <Leader>g :GFiles!<CR>


nnoremap <silent> <Leader>ds :Gdiffsplit<CR>
nnoremap <silent> <Leader>dt :Git difftool<CR>

" Start fuzzy search lines in the current buffer, requires vim-fzf plugin.
nnoremap <silent> // :BLines!<CR>

" Start fuzzy search for lines in all files, requires vim-fzf plugin.
nnoremap <silent> ?? :Rg!<CR>

" Start fuzzy search for lines in all files with words under cursor, requires vim-fzf plugin.
nnoremap <silent> <Leader>* :Rg! \b<c-r><c-w>\b<CR>

" Create folds by syntaxet foldmethod=syntax<CR>

" Create folds by indent.
nnoremap <silent> <Leader>fi :set foldmethod=indent<CR>

nnoremap <leader>u :UndotreeShow<CR>

" Open splits to the right (if horizontal) and to below (if vertical).
set splitright
set splitbelow

" -------------------------------------------------------------------------------------------------
" undotree settings
" -------------------------------------------------------------------------------------------------
let g:undotree_WindowLayout = 1

" e.g. using 'd' instead of 'days' to save some space.
let g:undotree_ShortIndicators = 0

let g:undotree_SplitWidth = 60

let g:python3_host_prog = "/Library/Developer/CommandLineTools/usr/bin/python3" 

" -------------------------------------------------------------------------------------------------
" fzf.vim settings
" -------------------------------------------------------------------------------------------------
" Open preview window to the top.
let g:fzf_preview_window = 'up:77%'

" -------------------------------------------------------------------------------------------------
" harpoon
" -------------------------------------------------------------------------------------------------
nnoremap <silent><leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>


" -----------------------------------------------------------------------------
" vim-crystalline settings
" -----------------------------------------------------------------------------

" Use single character to indicate the current mode.
let g:crystalline_mode_labels = {
			\ 'n': ' N ',
			\ 'i': ' I ',
			\ 'v': ' V ',
			\ 'R': ' R ',
			\ '': '',
			\ }

function! StatusLine(current, width)
  let l:s = ''

  if a:current
    let l:s .= crystalline#mode() . crystalline#right_mode_sep('')
  else
    let l:s .= '%#CrystallineInactive#'
  endif
  let l:s .= ' %t%h%w%m%r '
  if a:current
    let l:s .= crystalline#right_sep('', 'Fill') . ' %{len(fugitive#head())==0?"[No Branch]":fugitive#head()}'
    let l:s .= ' %{len(coc#status())==0?"":"| " . coc#status()}'
    let l:s .= "%{len(get(b:,'coc_current_function',''))==0?'':'| ' . get(b:,'coc_current_function','')}"
  endif

  let l:s .= '%='
  if a:current
    let l:s .= crystalline#left_sep('', 'Fill') . ' %{&paste ?"PASTE ":""}%{&spell?"SPELL ":""}'
    let l:s .= crystalline#left_sep('', 'Fill') . ' %{&paste ?"PASTE ":""}%{&spell?"SPELL ":""}'
  endif
  if a:width > 80
    let l:s .= ' %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
  else
    let l:s .= ' '
  endif

  return l:s
endfunction

function! TabLine()
  let l:vimlabel = has('nvim') ?  ' NVIM ' : ' VIM '
  return crystalline#bufferline(2, len(l:vimlabel), 1) . '%=%#CrystallineTab# ' . l:vimlabel
endfunction

let g:crystalline_enable_sep = 1
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_tabline_fn = 'TabLine'
let g:crystalline_theme = 'default'

" -----------------------------------------------------------------------------
" Show the progress bar of the file
" -----------------------------------------------------------------------------

func! STL()
  let stl = '%f [%{(&fenc==""?&enc:&fenc).((exists("+bomb") && &bomb)?",B":"")}%M%R%H%W] %y [%l/%L,%v] [%p%%]'
  let barWidth = &columns - 65 " <-- wild guess
  let barWidth = barWidth < 3 ? 3 : barWidth

  if line('$') > 1
    let progress = (line('.')-1) * (barWidth-1) / (line('$')-1)
  else
    let progress = barWidth/2
  endif

  " line + vcol + %
  let pad = strlen(line('$'))-strlen(line('.')) + 3 - strlen(virtcol('.')) + 3 - strlen(line('.')*100/line('$'))
  let bar = repeat(' ',pad).' [%1*%'.barWidth.'.'.barWidth.'('
        \.repeat('-',progress )
        \.'%2*0%1*'
        \.repeat('-',barWidth - progress - 1).'%0*%)%<]'

  return stl.bar
endfun

hi def link User1 DiffAdd
hi def link User2 DiffDelete
set stl=%!STL()


" -----------------------------------------------------------------------------
" Mess
" -----------------------------------------------------------------------------
" Settings that haven't been put into any of the categories above.

" Configure font size for firenvim
function! OnUIEnter(event)
  let l:ui = nvim_get_chan_info(a:event.chan)
  if has_key(l:ui, 'client') && has_key(l:ui.client, 'name')
    if l:ui.client.name ==# 'Firenvim'
      set guifont=Iosevka:h20
    endif
  endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))

" Enable syntax highlight and code folding using nvim_treesitter.
nnoremap <silent> <Leader>t :TSEnable highlight<CR>:set foldmethod=expr \| :set foldexpr=nvim_treesitter#foldexpr()<CR>:e<CR>

" Enable history for fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Enable mouse (e.g., resizing splits).
set mouse=

" Ignore minimised javascript files for various wildcard operations.
set wildignore+=*.js.min

" Remave node_modules folder from wildcard (used in npm projects).
set wildignore+=**/node_modules/**

" Remave vendor folder from wildcard (used in Go projects).
set wildignore+=**/vendor/**

" Remave target folder from wildcard (used in Maven projects).
set wildignore+=**/target/**

set showtabline=1 " show tabline only when there are more than one tab
set guioptions-=e " When in GUI mode, use GUI to add tabs
set laststatus=2 " Always show status line
set cmdheight=1 " Use 1 line for command-line

let g:netrw_preview=1 " netrw (:Lexplore) previews (p) open to the right
let g:netrw_winsize=38 " netrw (:Lexplore) takes up 38% (golden ratio) of screen

" Jump to last known position in a file after opening it.
autocmd BufReadPost *
\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
\ |   exe "normal! g`\""
\ | endif

" Configure tabs to be 2 spaces wide, some these three options are always set
" together.
set tabstop=2 
set softtabstop=2
set shiftwidth=2

" Expand tab into spaces.
set expandtab 

" Pressing <Tab> key inserts blanks according to shiftwidth, tabstop and
" softtabstop.
set smarttab

" Automatically indents base on code (e.g., line after opening braces).
" autoindent and smartindent seems to be generally used together.
set autoindent 
set smartindent

" Disable automatic hard wrapping of lines.
set textwidth=0

" Use '↪ ' to indicate soft-wrap
set showbreak=↪\ 
