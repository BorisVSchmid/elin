function! elin#internal#path#abs() abort
  " absolute path of the current buffer, canonical for Elin
  let l:p = expand('%:p')

  " Windows → forward slashes
  if has('win32') || has('win64')
    let l:p = substitute(l:p, '\\', '/', 'g')
  endif

  " strip stray CRs that sometimes cling to register contents
  let l:p = substitute(l:p, '\r\+$', '', '')

  return l:p
endfunction
