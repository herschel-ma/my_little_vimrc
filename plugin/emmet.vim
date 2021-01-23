let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall
autocmd FileType html,css,scss inoremap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" html:5 tab
" ul>li*3 tab
" etc.
