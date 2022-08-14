nnoremap <C-TAB> <Plug>VimwikiNextLink
nnoremap <C-CR> <Plug>VimwikiVSplitLink
nnoremap <silent> <leader>o :call OpenUrlUnderCursor()<CR>

let g:vim_markdown_fenced_languages = ['cs']
let g:vimwiki_camel_case = 0
let g:vimwiki_table_auto_fmt = 1
let g:vimwiki_use_calendar = 1
let g:vimwiki_list = [{'path': '~/vimwiki/','syntax': 'markdown', 'ext': '.md'}]

function! OpenUrlUnderCursor()
    let url = matchstr(getline("."), '[a-z]*:\/\/[^ >,;()]*')
    let url = shellescape(url, 1)
    if url != "''"
        silent exec "!cmd.exe /C start ".url.""
    else
        echo "No URL under cursor."
    endif
endfunction
