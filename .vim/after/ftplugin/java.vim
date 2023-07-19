set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
setlocal colorcolumn=79

setlocal path=.,**
setlocal wildignore=*.o
setlocal omnifunc=javacomplete#Complete
set suffixesadd=h

"compiler java
"
map <F9> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc

autocmd FileType java 
setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

"To enable usual (will ask for import option) inserting class imports with F5, add:

nmap <F5> <Plug>(JavaComplete-Imports-Add)

imap <F5> <Plug>(JavaComplete-Imports-Add)

"To add all missing imports with F6:

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)

imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

"To remove all unused imports with F7:

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

