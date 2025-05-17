function! elin#internal#plugin#search() abort
  " All the built-in alias / interceptor EDN files are here:
  return globpath(&runtimepath, 'resources/*.edn', 1, 1)
endfunction
