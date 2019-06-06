# Jirafa.vim

Open JIRA cards from Vim.

![Jirafa](https://static.thenounproject.com/png/30239-200.png)

## Installation ##

Use your preferred installation method for Vim plugins.

With [vim-plug](https://github.com/junegunn/vim-plug) that would mean to add
the following to your vimrc:

```vim
Plug 'iovis/jirafa.vim'
```

## Usage ##

Define your JIRA url:
```vim
let g:jira_url = 'https://rubiconmd.atlassian.net/'
let g:jira_url = $JIRA_URL
```

Launch `:Jira` to open a card in your browser.

```vim
:Jira RMD-1234  " Specify a single card
:Jira           " Read it from your git branch
```
