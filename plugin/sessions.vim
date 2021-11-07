" Creates plugin's command

" Checking if the plugin was already loaded.
" If it was than stop sourcing.
"
" :help finish
if exists("g:sessions_managers")
     finish
endif

" As you've seen before this is the variable that gets checked on before
" sourcing this file.
let g:sessions_manager = 1

" If it was not loaded define the required commands
command! SessionCreate lua require('sessions').create_session()
command! SessionList   lua require('sessions').list_sessions()
