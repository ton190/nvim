augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
augroup end

augroup _markdown
	autocmd!
	autocmd FileType markdown setlocal wrap
	autocmd FileType markdown setlocal spell
augroup end

augroup _auto_resize
	autocmd!
	autocmd VimResized * tabdo wincmd = 
augroup end

augroup _alpha
	autocmd!
	autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
augroup end

augroup _fix_focus
	autocmd!
	autocmd BufEnter,FocusGained * checktime
	autocmd CursorHold,CursorHoldI * checktime
augroup end

autocmd CursorHold * lua require('echo-diagnostics').echo_line_diagnostic()

" augroup _popup_diagnostics
" 	autocmd!
" 	autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nill, {border="rounded", focus=false})
" augroup end

augroup _auto_format
	autocmd!
	autocmd BufWritePre js, lua vim.lsp.buf.format(nil, 1000)
augroup end

augroup _change_relativenumbers
	autocmd!
	autocmd InsertEnter, set relativenumber
	autocmd InsertLeave, set norelativenumber
augroup end

augroup _auto_insert
	autocmd!
	autocmd TermOpen , startinsert
augroup end
