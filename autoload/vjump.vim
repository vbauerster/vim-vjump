" Original: https://github.com/justinmk/config/blob/347aecb4f74dc755e000c97eae17d80598c80d42/.config/nvim/init.vim#L272-L289
" vim-vertical-move replacement
" credit: cherryberryterry: https://www.reddit.com/r/vim/comments/4j4duz/a/d33s213
function! vjump#to(dir)
		let c = '%'.virtcol('.').'v'
		let flags = a:dir ? 'bnW' : 'nW'
		let bot = search('\v'.c.'.*\n^(.*'.c.'.)@!.*$', flags)
		let top = search('\v^(.*'.c.'.)@!.*$\n.*\zs'.c, flags)
		echom string(bot) string(top)

		" norm! m`
		return a:dir ? (line('.') - (bot > top ? bot : top)).'k'
			\		: ((bot < top ? bot : top) - line('.')).'j'
endfunction
