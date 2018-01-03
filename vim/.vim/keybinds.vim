let mapleader=" "

nnoremap gl G
vnoremap gl G
onoremap gl G
nnoremap <silent>- :noh<cr>
xnoremap <silent>- :noh<cr>
nnoremap <cr> :w<cr>

nnoremap Q q
nnoremap q ZQ

nnoremap ( {
xnoremap ( {
nnoremap ) }
xnoremap ) }
command W w !sudo tee % >/dev/null

nnoremap <F2> :Buffers<CR>
nnoremap <F1> :Files<CR>
nnoremap <leader>t :terminal<CR>

nmap <leader>s <Plug>(easymotion-overwin-f)
" Insert mode completion
if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <c-x><c-o>
else " no gui
  if has("unix")
    inoremap <Nul> <c-x><c-o>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
