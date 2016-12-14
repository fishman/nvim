let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #

setl cindent cino=J1

nmap <buffer> <silent> <Leader>r :R<CR>
nmap <buffer> <silent> <Leader>rs :RS<CR>
nmap <buffer> <silent> <Leader>a :A<CR>
nmap <buffer> <silent> <Leader>av :AV<CR>
nmap <buffer> <silent> <Leader>as :AS<CR>
nmap <buffer> <silent> <Leader>rt :Rtags<CR><CR>
nmap <buffer> <silent> <Leader>rm :Rmodel<cr>
nmap <buffer> <silent> <Leader>rc :Rcontroller<cr>
nmap <buffer> <silent> <Leader>rv :Rview<cr>
nmap <buffer> <silent> <Leader>rf :Rfixtures<cr>
nmap <buffer> <silent> <Leader>rl :Rlayout<cr>
nmap <buffer> <silent> <Leader>rp :Rpreview<cr><cr>

autocmd User Rails    silent! Rlcd
autocmd User Rails    map <buffer> <F9> :Rake<CR>
autocmd User Rails    map <buffer> <F8> :Rserver!thin<CR><CR>
autocmd User Rails    map <F7> :R<CR>
autocmd User Rails.spec* UltiSnipsAddFiletypes rspec
