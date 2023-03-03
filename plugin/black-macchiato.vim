function s:RunBlackMacchiato() range
    let cmd = get(g:, "black_macchiato_path", "black-macchiato")
    let args = get(g:, "black_macchiato_args", "")
    if !executable(cmd)
        echohl ErrorMsg
        echom "black-macchiato not found!"
        echohl None
        return
    endif

    silent execute a:firstline . "," . a:lastline . "!" . cmd args

    echo "Done formatting."

endfunction

" Create a command to call the black-macchiato function
command -range BlackMacchiato <line1>,<line2>call <sid>RunBlackMacchiato()

xnoremap <plug>(BlackMacchiatoSelection) :'<,'>BlackMacchiato<cr>
nnoremap <plug>(BlackMacchiatoCurrentLine) :BlackMacchiato<cr>
