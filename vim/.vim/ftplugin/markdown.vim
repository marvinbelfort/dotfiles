setlocal autoindent
setlocal colorcolumn=0
setlocal linebreak
setlocal nonumber
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap
setlocal textwidth=0
setlocal wrapmargin=0

let g:pencil#wrapModeDefault = 'soft'

call pencil#init()

nnoremap gy :Goyo<CR>
nnoremap gm :LivedownToggle<CR>

set spell spelllang=pt,en
hi SpellBad cterm=underline

let g:AutoPairsDelete=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsJump=''
let g:AutoPairsToggle=''
let g:AutoPairsBackInsert=''
let g:AutoPairsFastWrap=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsMoveCharacter=''
let g:AutoPairsShortcutBackInsert = ''


