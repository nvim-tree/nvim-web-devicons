if exists('g:loaded_devicons') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

" TODO change so its easier to get
let g:nvim_web_devicons = 1

lua require'nvim-web-devicons'.setup()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_devicons = 1
