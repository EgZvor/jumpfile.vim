nnoremap <plug>(JumpPrevFile) <cmd>execute 'normal ' . jumpfile#compute_previous() . "\<c-o>"<cr>
nnoremap <plug>(JumpNextFile) <cmd>execute 'normal ' . jumpfile#compute_next() . "\<c-i>"<cr>
