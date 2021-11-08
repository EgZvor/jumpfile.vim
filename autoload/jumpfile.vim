function! jumpfile#compute_previous()
    let [jump_list, pos] = getjumplist()
    let previous_list = jump_list
        \ ->map({idx, val -> [idx, val]})[:pos]
        \ ->reverse()
        \ ->filter({idx, pos_b -> pos_b[1].bufnr != bufnr()})
    if previous_list != []
        return pos - previous_list[0][0]
    else
        return 0
    endif
endfunction

function! jumpfile#compute_next()
    let [jump_list, pos] = getjumplist()
    let next_list = jump_list
        \ ->map({idx, val -> [idx, val]})[pos:]
        \ ->filter({idx, pos_b -> pos_b[1].bufnr != bufnr()})
    if next_list != []
        return next_list[0][0] - pos
    else
        return 0
    endif
endfunction
