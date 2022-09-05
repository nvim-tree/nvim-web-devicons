if exists('g:loaded_devicons') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

" TODO change so its easier to get
let g:nvim_web_devicons = 1

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_devicons = 1

" compatibility with vim-devicons, so VimScript-only plugins can check if the
" function exists and don't care if it comes from vim-devicons or this plugin
function! WebDevIconsGetFileTypeSymbol(name, ext = "")

    if empty(a:ext)
        let l:extension = getbufvar(a:name, "&filetype", "")
    else
        let l:extension = a:ext
    endif

    let l:icon = luaeval("require('nvim-web-devicons').get_icon(\""..a:name.."\", \""..l:extension.."\")")

    if l:icon == "null"
        return ""
    else
        return l:icon
    endif

endfunction
