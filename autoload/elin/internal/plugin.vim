function! elin#internal#plugin#search() abort
  return globpath(&runtimepath, 'example-plugin/plugin.edn', 1, 1)
endfunction
