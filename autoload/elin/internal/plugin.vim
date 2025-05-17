function! elin#internal#plugin#search() abort
  " support both repository layouts ------------------------------------
  "   1. old packer/plug   → elin/plugin.edn
  "   2. lazy.nvim / main  → plugin/*.edn  (or resources/*.edn)
  return
        \ globpath(&runtimepath, 'elin/plugin.edn',   1, 1) +
        \ globpath(&runtimepath, 'plugin/*.edn',      1, 1) +
        \ globpath(&runtimepath, 'resources/*.edn',   1, 1)
endfunction
