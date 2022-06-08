" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'python-rope/ropevim'
" Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips', { 'commit': 'a909dee82b6eaaa3ae001e27c3e95c58d487d242'}
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
" /Plug 'ludovicchabant/vim-gutentags'
Plug 'universal-ctags/ctags'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'jonathanfilip/vim-lucius'
Plug 'tpope/vim-commentary'
Plug 'tweekmonster/impsort.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'romainl/vim-cool'
Plug 'tpope/vim-repeat'
Plug 'neoclide/coc.nvim'
Plug 'vim-scripts/visualrepeat'
Plug 'heavenshell/vim-pydocstring'
" Plug 'thaerkh/vim-workspace'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'psf/black', { 'commit': 'ce14fa8b497bae2b50ec48b3bd7022573a59cdb1' }
Plug 'hjson/vim-hjson'
Plug 'hdima/python-syntax'
" Plug 'vim-syntastic/syntastic'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'lervag/vimtex'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-dispatch'
Plug 'morhetz/gruvbox'
" Plug 'xuhdev/vim-latex-live-preview'
" Plug 'ncm2/float-preview.nvim'
" Plug 'puremourning/vimspector'
" :w
" Initialize plugin system
call plug#end()

let g:python_host_prog = '//home/sabih/anaconda3/envs/kiss/bin/python3'
set termguicolors
"
"
" Theme options
" set t_Co=256
" colorscheme Monokai
" set background=dark    " Setting dark mode
""" Hilight search and set numbers

" Colorscheme options
" let g:lucius_style="light"
" let g:lucius_contrast="low"
" colo lucius
" set background=light
"
" set background=light    " Setting dark mode
" let g:gruvbox_italic=0
" let g:gruvbox_bold=0
" let g:gruvbox_underline=0
" let g:gruvbox_italicize_strings=0
colorscheme gruvbox
map <leader>vimrc :source ~/.vimrc<cr>
autocmd bufwritepost .vimrc source //home/sabih/.vimrc
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'

syntax on
" colorscheme onehalflight
" let g:airline_theme='onehalflight'

" colorscheme Neon
set background=light
" colorscheme PaperColor
let python_highlight_all = 1
" pydocstring
nmap <silent> <C-m> <Plug>(pydocstring)
let g:pydocstring_doq_path = '//home/sabih/anaconda3/envs/kiss/bin/doq'
let g:pydocstring_templates_dir='//home/sabih/.vim/bundle/vim-pydocstring/test/templates/numpy'
let g:pydocstring_formatter = 'numpy'

:let mapleader = "'" 

inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

imap jj <Esc>
map <leader>a :action $SelectAll<CR>
map <leader>b :action GotoDeclaration<CR>
map <leader>c :action $Copy<CR>
map <leader>d :action EditorDuplicate<CR>
map <leader>e :action RecentFiles<CR>
map <leader>f :action Find<CR>
map <leader>g :action GotoLine<CR>
map <leader>h :action TypeHierarchy<CR>
map <leader>i :action ImplementMethods<CR>
map <leader>m :action EditorScrollToCenter<CR>
map <leader>n :action FileChooser.NewFolder<CR>
map <leader>o :action OverrideMethods<CR>
map <leader>p :action ParameterInfo<CR>
map <leader>q :action QuickJavaDoc<CR>
map <leader>r :action Replace<CR>
map <leader>s :action SaveAll<CR>
map <leader>t :action Vcs.UpdateProject<CR>
map <leader>u :action GotoSuperMethod<CR>
map <leader>v :action $Paste<CR>
map <leader>w :action EditorSelectWord<CR>
map <leader>x :action $Cut<CR>
map <leader>y :action EditorDeleteLine<CR>
map <leader>[ :action EditorCodeBlockStart<CR>
map <leader>] :action EditorCodeBlockEnd<CR>


set timeoutlen=1000
" inoremap jj <Esc>
inoremap jk <Esc>
:vmap < <gv
:vmap > >gv 
vnoremap <silent> # :s/^/# /<cr>:noh<cr>
vnoremap <silent> -# :s/^# //<cr>:noh<cr>

map <leader>t :TagbarToggle<CR>
map <leader>o :TagbarOpen<CR>
map <leader>c :TagbarClose<CR>

map <leader>m :lnext<CR>
map <leader>n :lprev<CR>
map <leader>l :lopen<CR>
map <leader>k :lclose<CR>

noremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-s> :g/^\s\+$/s/\s\+//

set splitbelow
set splitright
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <leader>b :CtrlPBuffer<cr></cr>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
map <Leader>w <esc>:tabprevious<CR>
map <Leader>q <esc>:tabnext<CR>

"" Show the buffer number in the status line.
nnoremap <silent> <Plug>(MyPluginVisual)

set shell=/bin/bash
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=20                            " let 10 lines before/after cursor during scroll


set hlsearch
highlight Search guibg=#af005f ctermbg=125
"""" clear highlight with <esc> after a search
nnoremap <C-h> :noh<return>
set number

set cc=88

" autocmd BufWritePost *.py execute ':Black'

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" Nerdtree configuration
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Switching between buffers
" Set commands to switching between buffers
:nnoremap <Tab> :bnext!<CR>
:nnoremap <S-Tab> :bprevious!<CR>
:nnoremap <C-X> :bp<bar>sp<bar>bn<bar>bd<CR>

" File searchs
map <C-p> :Files<CR>

" Ale Configuration
"""" Better formatting fo worp/ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%] [%...code...%]'
"""" Enable completion where available.
let g:ale_completion_enabled = 1
""" Customize linters that are turned on
let g:ale_linters = {
	\   'python': ['flake8'],
	\}
let g:ale_set_highlights = 1

" Fix keys
set backspace=2

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsListSnippets='<c-tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

nmap <F8> :TagbarToggle<CR>



" Remove all trailing whitespace by pressing C-S
nnoremap <C-S> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Fix enter key behavior quickfix window
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Neovim terminal emulator options
" au TermOpen * setlocal nonumber norelativenumber

" Make sure Vim returns to the same line when you reopen a file.
" augroup line_return
  " au!
  " au BufReadPost *
    " \ if line("'\"") > 0 && line("'\"") <= line("$") |
    " \     execute 'normal! g`"zvzz' |
    " \ endif
" augroup END

vnoremap u <nop>
nnoremap Y y$

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $
vnoremap L g_

" Quit locationlist if that is the last buffer
autocmd QuitPre * if empty(&bt) | lclose | endif

" Easy breakpoint python
au FileType python map <silent> gb ofrom pdb import set_trace; set_trace()<esc>

" I never use folding and find typing [] awkward, so map z to ] and zz to [:
nmap zz [
nmap z ]
nnoremap ]. z.
omap zz [
omap z ]
xmap zz [
xmap z ]

" Speed
set regexpengine=1

" Show total number of matches while searching
let g:CoolTotalMatches = 1

" Python syntax enable everything
let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" FZF.vim
nmap <leader>l :BLines<cr>
nmap <leader>;l :BLines<cr><c-P>
nmap <leader>b :Buffers<cr>
nmap <leader>f :Files<cr>

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

nmap <leader>S :Tags<cr>
nmap <leader>s :BTags<cr>
nmap <leader>p :History<cr>
nmap <leader>/ :Ag!<cr>
nmap <leader>;/ :Ag!<cr><c-P>
nmap <space>r :Rg<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
let $FZF_DEFAULT_OPTS = '--layout=reverse  --margin=1,3'

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
  let height = &lines
  let width = float2nr(&columns)
  let col = float2nr((&columns - width * 0.8) / 2)
  let horizontal = float2nr((&columns - width) / 2)

  let opts = {
          \ 'relative': 'editor',
          \ 'row': (height - 8) / 2 - 3,
          \ 'col': (width - 75) / 2,
          \ 'width': 75,
          \ 'height': 8
          \ }
  let win= nvim_open_win(buf, v:true, opts)
  call setwinvar(win, '&winhl', 'Normal:FZFBackground')
endfunction

" Customize fzf colors to match your color scheme
hi FZFHighlight ctermbg=255
hi FZFBackground ctermbg=254
let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'FZFBackground'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'FZFHighlight', 'FZFHighlight'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Location list

" command!  LToggle call s:LListToggle()
" command!  LFillForce call s:FillLList()

function! s:LListToggle() abort
   let buffer_count_before = s:BufferCount()

   " Location list can't be closed if there's cursor in it, so we need
   " to call lclose twice to move cursor to the main pane
   silent! lclose
   silent! lclose

   if s:BufferCount() == buffer_count_before
      execute "silent! lopen 2"
      execute "silent! set nonumber norelativenumber"
   endif
endfunction

function! s:LListForceShow() abort
   execute "call setloclist(0, [], 'r')"
endfunction

function! s:BufferCount() abort
   return len(filter(range(1, bufnr('$')), 'bufwinnr(v:val) != -1'))
endfunction

" nnoremap <silent> <space>a  :LToggle<cr>
" autocmd BufReadPost *.py :LFillForce

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" move with wrap

" Mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
  if &wrap
    return "g" . a:movement
  else
    return a:movement
  endif
endfunction

onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" coc.nvim settings
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nowritebackup

" let g:gutentags_trace = 1

" You will have bad experience for diagnostic messages when it's default 4000.
" set updatetime=1000

" don't give |ins-completion-menu| messages.
set shortmess+=c

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Or use `complete_info` if your vim support it, like:
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
" nmap <silent> [l <Plug>(coc-diagnostic-prev)
" nmap <silent> ]l <Plug>(coc-diagnostic-next)

nmap <silent> [l <Plug>(coc-diagnostic-prev-error)
nmap <silent> ]l <Plug>(coc-diagnostic-next-error)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

set updatetime=100

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder silent! call CocActionAsync('showSignatureHelp')
  autocmd CursorHold, CursorHoldI * call CocActionAsync('showSignatureHelp')
augroup end

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
xmap <leader>a  <Plug>(coc-codeaction-selected)

nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>S  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Color tweaks
" Change colorscheme Coc errors/warning/hints
hi Pmenu ctermbg=253 ctermfg=240
hi Search cterm=bold ctermbg=None ctermfg=0
hi IncSearch ctermfg=0 ctermbg=254 cterm=bold
hi VertSplit ctermbg=253

hi default CocSubtle term=None
hi default link CocErrorHighlight CocSubtle
hi default link CocWarningHighlight CocSubtle
hi default link CocInfoHighlight CocSubtle
hi default link CocHintHighlight CocSubtle
"
hi CocWarningHighlight cterm=underline
" hi CocInfoHighlight ctermbg=254
hi CocErrorHighlight cterm=underline ctermbg=88
" hi CocHintHighlight ctermbg=254
"
hi Function cterm=None ctermfg=34
hi Statement cterm=None ctermfg=32
hi Type cterm=None ctermfg=30

" Impsort option
hi pythonImportedObject ctermfg=126 cterm=None
hi pythonImportedFuncDef ctermfg=126 cterm=None
hi pythonImportedClassDef ctermfg=126 cterm=None
hi LineNR ctermbg=254
hi CursorLineNR ctermbg=254
hi Function ctermfg=35
hi Number ctermfg=173
hi String ctermfg=173
hi Constant ctermfg=173
hi Keyword ctermfg=31

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" vimspector
let g:vimspector_enable_mappings='HUMAN'
nmap <leader> dd: call vimspector#Launch()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" C++ cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Latex
" let g:livepreview_previewer = 'okular'
" let g:vimtex_view_method = 'okular'
let g:vimtex_view_method = 'zathura'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Statusline
function! CocErrors() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, ' ' . info['error'] . ' ')
  endif
  return join(msgs, ' ')
endfunction

function! CocWarnings() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'warning', 0)
    call add(msgs, ' ' . info['warning'] . ' ')
  endif
  return join(msgs, ' ')
endfunction

function! CocStatus() abort
  return get(g:, 'coc_status', '')
endfunction


