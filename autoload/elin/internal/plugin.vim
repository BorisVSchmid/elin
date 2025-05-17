function! elin#internal#plugin#search() abort
  " old packer layout (elin/plugin.edn) + new resources/*.edn
  return globpath(&runtimepath, 'example-plugin/plugin.edn', 1, 1)
       \ + globpath(&runtimepath, 'resources/*.edn', 1, 1)
endfunction
