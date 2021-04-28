# vim user-defined snippets

This repository contains the following custom snippets:

| Snippet                   | Description                  |
| ------------------------- | ---------------------------- |
| `fig` + <kbd>tab</kbd>    | Inserts a figure block       |
| `note` + <kbd>tab</kbd>   | Inserts a note template      |
| `pdf` + <kbd>tab</kbd>    | Inserts an `includepdf` line |
| `ref` + <kbd>tab</kbd>    | Inserts a reference block    |
| `tabl` + <kbd>tab</kbd>   | Inserts a table block        |

## How snippets work

Type a pre-defined keyword, say, `fig` and press <kbd>tab</kbd>, and it produces a full block of figure LaTeX code.

## Requirements

To be able to use these, the following is assumed: 

- Vim version is `vim-nox` that supports python3 bindings (check `vim --version` and it should have `+python3` in the listing)
- [UltiSnips][us] is installed and working (I use [vim-plug][vp] to manage plug-ins) as below in `.vimrc` file:

```vim
call plug#begin('~/.vim/plugged')
" UltiSnips for snippets
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
call plug#end()
```

[us]: https://github.com/SirVer/ultisnips
[vp]: https://github.com/junegunn/vim-plug
