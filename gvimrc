" Colors for MacVim
set bg=dark
" colors slate
highlight Normal  guibg=Black   guifg=White
highlight PreProc guibg=Black
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Window size
let g:halfsize = 106
let g:fullsize = 160
set lines=57
let &columns = g:halfsize

" Font
set guifont=Monaco:h13.00

" No audible bell
set vb

" Colors for autocomplete
highlight Pmenu    guibg=#202040 guifg=Gray
highlight Pmenusel guibg=#4040D0 guifg=White

" Syntax colors
highlight String  guifg=DarkGray

"Automatically expand window when vertically split
set equalalways
set winwidth=80
function IsWinSplit()
  return &columns != winwidth(winnr())
endfunction

function SetWidthForSplit()
  if IsWinSplit()
    let &columns = g:fullsize
  else
    let &columns = g:halfsize
  endif
endfunction

autocmd WinEnter * call SetWidthForSplit()
