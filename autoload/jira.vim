function! jira#parse(str) abort
  return matchstr(a:str, '\w\+-\d\+')
endfunction
