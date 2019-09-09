call plug#begin('~/.config/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'

Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()

syntax                 on
filetype               on
filetype indent        on
filetype plugin        on
filetype plugin indent on

set smarttab
set expandtab
set autoindent
set smartindent

set tabstop=2
set shiftwidth=2
set softtabstop=2

set incsearch
set smartcase
set ignorecase
set nohlsearch

 noremap ;     :
inoremap jk    <Esc>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
tnoremap <C-j> <Down>
tnoremap <C-k> <Up>
tnoremap <C-n> <C-\><C-n>

nnoremap <M-h>               <C-w>h
tnoremap <M-h>     <C-\><C-n><C-w>h
nnoremap <M-j>               <C-w>j
tnoremap <M-j>     <C-\><C-n><C-w>j
nnoremap <M-k>               <C-w>k
tnoremap <M-k>     <C-\><C-n><C-w>k
nnoremap <M-l>               <C-w>l
tnoremap <M-l>     <C-\><C-n><C-w>l
nnoremap <M-,>               :tabp<CR>
tnoremap <M-,>     <C-\><C-n>:tabp<CR>
nnoremap <M-.>               :tabn<CR>
tnoremap <M-.>     <C-\><C-n>:tabn<CR>
nnoremap <M-Up>              :tabe<CR>
tnoremap <M-Up>    <C-\><C-n>:tabe<CR>
nnoremap <M-Left>            :-tabm<CR>
tnoremap <M-Left>  <C-\><C-n>:-tabm<CR>
nnoremap <M-Right>           :+tabm<CR>
tnoremap <M-Right> <C-\><C-n>:+tabm<CR>

     map <M-a> <Plug>(EasyAlign)
nnoremap <M-w> :set wrap!<CR>
nnoremap <M-n> :set number!<CR>
nnoremap <M-h> :set hlsearch!<CR>
nnoremap <M-t> :terminal<CR>:set nonu<CR>i

xnoremap <        <gv
xnoremap >        >gv
nnoremap [t       ddkP
nnoremap ]t       ddp
nnoremap [<Space> O<Esc>j
nnoremap ]<Space> o<Esc>k

onoremap aa a>
xnoremap aa a>
onoremap ia i>
xnoremap ia i>
onoremap ar a]
xnoremap ar a]
onoremap ir i]
xnoremap ir i]
onoremap <silent> al :<C-U>call Inner()<CR>
xnoremap <silent> al :<C-U>call Inner()<CR>
onoremap <silent> il :<C-U>call Inner()<CR>
xnoremap <silent> il :<C-U>call Inner()<CR>
function! Inner()
  norm! m`
  keepj norm! ^vg_
endfunction
let g:surround_45 = "{% \r %}"
let g:surround_61 = "{{ \r }}"
autocmd FileType vim                        setlocal commentstring=\"\ %s
autocmd FileType python,shell,perl,ruby     setlocal commentstring=#\ %s
autocmd FileType c,cpp,java,javascript,html setlocal commentstring=//\ %s

set number
set tags=./tags
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-n> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeMinimalUI                     = 1
let g:NERDTreeMinimalMenu                   = 1
let g:NERDTreeShowHidden                    = 1
let g:NERDTreeAutoDeleteBuffer              = 1
let g:NERDTreeCascadeSingleChildDir         = 0

set completeopt-=preview
let g:ycm_semantic_triggers                             = {'python,javascript,typescript': ['re!\w{2}']}
let g:ycm_key_list_select_completion                    = ['<Tab>', '<Down>']
let g:ycm_key_list_previous_completion                  = ['<S-Tab>', '<Up>']
let g:ycm_key_list_stop_completion                      = ['<C-y>']
let g:ycm_complete_in_comments                          = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files           = 1
let g:ycm_seed_identifiers_with_syntax                  = 1
let g:UltiSnipsEnableSnipMate                           = 0
let g:UltiSnipsExpandTrigger                            = '<M-j>'
let g:UltiSnipsListSnippets                             = '<M-k>'
let g:user_emmet_leader_key                             = '<C-z>'

let g:fzf_colors = {
      \ 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
nnoremap ,             <nop>
nnoremap ,F            :Files
nnoremap ,t            :Tags<CR>
nnoremap ,m            :Maps<CR>
nnoremap ,f            :Files<CR>
nnoremap ,l            :Lines<CR>
nnoremap ,g            :BLines<CR>
nnoremap ,c            :Colors<CR>
nnoremap ,b            :Buffers<CR>
nnoremap ,h            :History<CR>
nnoremap ,/            :History/<CR>
nnoremap ,;            :History:<CR>
nnoremap ,s            :Snippets<CR>
nnoremap ,,            :Commands<CR>
nnoremap <F1>          :Helptags<CR>
    nmap <leader><Tab> <Plug>(fzf-maps-n)
    xmap <leader><Tab> <Plug>(fzf-maps-x)
    omap <leader><Tab> <Plug>(fzf-maps-o)
    imap <C-x><C-k>    <Plug>(fzf-complete-word)
    imap <C-x><C-f>    <Plug>(fzf-complete-path)
    imap <C-x><C-l>    <Plug>(fzf-complete-line)

autocmd FileType java nnoremap <buffer> <F2> :!ctags -R *.java<CR>
autocmd FileType java nnoremap <buffer> <F3> :w<CR>:call system('java -jar ~/.config/plugged/google-java-format-1.7-all-deps.jar --replace ' . expand('%:p'))<CR>:e<CR>
