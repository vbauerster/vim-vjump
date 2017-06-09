function! vjump#to(dir)
		let c = '%'.virtcol('.').'v'
		let flags = a:dir ? 'bnW' : 'nW'
		let bot = search('\v'.c.'.*\n^(.*'.c.'.)@!.*$', flags)
		let top = search('\v^(.*'.c.'.)@!.*$\n.*\zs'.c, flags)
		echom string(bot) string(top)

		" norm! m`
		return a:dir ? (line('.') - (bot > top ? bot : top)).'k'
			\					: ((bot < top ? bot : top) - line('.')).'j'
endfunction
