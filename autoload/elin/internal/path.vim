" Normalize any absolute path that comes from Vim
function! elin#internal#path#norm(path) abort
  let l:p = a:path
  " 1. forward slashes on Windows
  if has('win32') || has('win64')
    let l:p = substitute(l:p, '\\', '/', 'g')
  endif
  " 2. strip stray carriage-returns
  let l:p = substitute(l:p, '\r\+$', '', '')
  return l:p
endfunction

" Absolute path of current buffer
function! elin#internal#path#file() abort
  return elin#internal#path#norm(expand('%:p'))
endfunction

" Absolute directory (\"head\") of current buffer
function! elin#internal#path#dir() abort
  return elin#internal#path#norm(expand('%:p:h'))
endfunction
