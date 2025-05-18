function! elin#internal#mark#get(mark_id) abort
  let pos = getpos(printf("'%s", a:mark_id))
  if pos == [0, 0, 0, 0]
    return {'path': '', 'lnum': 0, 'col': 0, 'off': 0, 'curswant': 0}
  endif

  let path = pos[0] == 0
      \ ? elin#internal#path#curbuf()
      \ : elin#internal#path#from_bufnr(pos[0])
  return {
        \ 'path': path,
        \ 'lnum': pos[1],
        \ 'col': pos[2],
        \ 'off': 0,
        \ 'curswant': 0,
        \ }
endfunction
