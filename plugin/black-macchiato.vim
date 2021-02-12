let g:black_macchiato_path = "black-macchiato"

function s:RunBlackMacchiato() range
    let cmd = g:black_macchiato_path
    if !executable(cmd)
        echohl ErrorMsg
        echom "black-macchiato not found!"
        echohl None
        return
    endif

    silent execute a:firstline . "," . a:lastline . "!" . cmd

    echo "Done formatting."

endfunction

" Create a command to call the black-macchiato function
command -range BlackMacchiato <line1>,<line2>call <sid>RunBlackMacchiato()

xnoremap <buffer> <plug>(BlackMacchiatoSelection) :'<,'>BlackMacchiato<cr>
nnoremap <buffer> <plug>(BlackMacchiatoCurrentLine) :BlackMacchiato<cr>
