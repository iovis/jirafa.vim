function! jira#url(card) abort
  if !exists('g:jira_url')
    throw 'JIRA url not set in g:jira_url'
  endif

  return trim(g:jira_url, '/') . '/browse/' . a:card
endfunction

function! jira#open(card) abort
  silent execute '!open ' . shellescape(jira#url(a:card))
endfunction

function! jira#parse(str) abort
  return matchstr(a:str, '\w\+-\d\+')
endfunction
