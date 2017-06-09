function! s:vjumpUp()
	silent! call repeat#set("\<Plug>(vjump-up)")
	return vjump#to(1)
endfunction

function! s:vjumpDown()
	silent! call repeat#set("\<Plug>(vjump-down)")
	return vjump#to(0)
endfunction

nnoremap <silent> <expr> <Plug>(vjump-up) <SID>vjumpUp()
nnoremap <silent> <expr> <Plug>(vjump-down) <SID>vjumpDown()
