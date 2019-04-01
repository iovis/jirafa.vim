if exists('jirafa_loaded') || v:version < 700
  finish
endif
let jirafa_loaded = 1

" TODO:
" - Autocomplete cards?
" - Create new issue?

command! -nargs=? Jira call <SID>jira(<f-args>)

function! s:jira(...)
  let l:card = jira#parse(get(a:, 1, <SID>gitBranch()))

  if empty(l:card)
    throw 'Specify a card or put the card number in your git branch.'
  endif

  return jira#open(l:card)
endfunction

function! s:gitBranch()
  return system('git rev-parse --abbrev-ref HEAD')
endfunction
