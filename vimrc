set laststatus=2
set title
set ruler


function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=225 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=6 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

"hi statusline guibg=Cyan ctermfg=0 guifg=Black ctermbg=121
"    hi statusline guibg=Cyan ctermfg=81 guifg=Black ctermbg=0
"    hi statusline guibg=Cyan ctermfg=225 guifg=Black ctermbg=0

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

