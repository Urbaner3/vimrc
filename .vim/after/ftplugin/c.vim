set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
setlocal colorcolumn=79

setlocal path=.,**
setlocal wildignore=*.o
set suffixesadd=h

"compiler c
nnoremap <F7> :make <bar> redraw!<CR>
nmap <F9> :call CfileMake()<CR>

function CfileMake()
    "   if(expand("%:p:h")!=getcws())
    "	echohl WarningMsg | echo "Fail to make! This file is not in the current dir! Press redirect to the dir of this file."
    "endif

	exec "w"
	call SetCompilation()
	exec "make"
	"exec "copen"
    execute "!./%:t:r"
endfunction



function SetCompilation()
	if &filetype=='c'
		set makeprg=gcc\ %\ -o\ %<
	elseif &filetype=='cpp'
		set makeprg=g++\ %\ -o\ %<
	endif
endfunction
