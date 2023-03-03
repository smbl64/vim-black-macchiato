# vim-black-macchiato

This plugin provides integration with [black-macchiato][bm-url] which is a partial code formatter for Python.

## Installation

**Vundle:**

```
Plugin 'smbl64/vim-black-macchiato'
```

**vim-plug:**

```
Plug 'smbl64/vim-black-macchiato'
```

## Features

You can use the `:BlackMacchiato` command in normal mode to run `black-macchiato` on the current line, or in visual mode to run it on the selected lines.

### Keybindings 

By default no keyboard shortcut is provided. You can use `<plug>(BlackMacchiatoSelection)` and `<plug>(BlackMacchiatoCurrentLine)` to define custom keyboard shortcuts.

For example, put these in your `.vimrc` file:

```
autocmd FileType python xmap <buffer> <Leader>f <plug>(BlackMacchiatoSelection)
autocmd FileType python nmap <buffer> <Leader>f <plug>(BlackMacchiatoCurrentLine)
```

## Settings

### The `g:black_macchiato_path` option

Set this to your `black-macchiato` installation path. 

Default: `"black-macchiato"`

### The `g:black_macchiato_args` option

Set this to additional argumens you want to pass to `black-macchiato`.  For
example you can set it to `"-S -l100"` to ask `black` to skip string
normalization and use a longer line length.

Default: `""`

[bm-url]: https://github.com/wbolster/black-macchiato

