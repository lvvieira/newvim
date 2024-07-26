"=======================================================
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
" WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD WORD
"=======================================================

" WORD count
function! WordCount()
   let cursor_position = getpos(".")
   let wordundercursor = expand('<cword>')
   execute ':%s/\<' . wordundercursor . '\>//gn'
   call setpos('.', cursor_position)
   echom wordundercursor
   "    :call histdel('/')
   "    redraw
endfunction
noremap wc :call WordCount()<CR>

" WORD yank
noremap wy yiw"+y<esc>

" WORD deletion
noremap wd "_daw

" WORD delete and paste
noremap wp viw"_dPb

" WORD captalize
noremap wU viwgU

" WORD smallcase
noremap wu viwgu

" WORD selection -> ws
noremap wv viw

" WORD replace
"noremap wr <Esc>mmviw:s/<c-r>=GetVisual()<cr>//g<left><left>
noremap <expr> wr 'mmviw:s/\<<c-r>=GetVisual()<CR>\>/' . input("New word: ") . '/g<CR>`m'

" WORD replace accros the entire file
noremap <expr> wR 'mm:%s/\<<c-r>=GetVisual()<CR>\>/' . input("New word: ") . '/g<CR>`m'


" SEARCH
" SEARCH
" SEARCH
" SEARCH
" SEARCH
" SEARCH

" WORD SEARCH same file -> ws
noremap <expr> ws '/\<' . input("Search for a word: ") . '\>/<CR>' . ':call WordCount()<CR>'
" WORD SEARCH same file -> wf
noremap wf <Esc>:set hlsearch<CR>:keepjumps normal! mi*`i<CR>
" Jump among searched words project across/folder files
noremap cj :cp<CR>
noremap cl :cn<CR>
noremap <expr> wS ':vimgrep /' . input("Search for a word in the entire directory: ") . '/ **/*<CR>'
" WORD SEARCH entire directory wS
" WORD SEARCH across the directory -> wF
noremap <expr> wF ':vimgrep /' . input("Word to search: ") . '/gj **/*<CR>:cw<CR>'

" Word completion
"inoremap <leader>wc <C-N>
"inoremap <expr> k pumvisible() ? "\<C-N>" : "k"
"inoremap <expr> i pumvisible() ? "\<C-P>" : "i"

" Captalize PARAGRAPH under cursor
noremap pU {jV}kU
" Smallcase PARAGRAPH under cursor
noremap pu {jV}ku
" PARAGRAPH formatting
inoremap <leader>pf <esc>gqap
nnoremap <leader>pf gqap
vnoremap <leader>pf qq

" Leave only first letter capitalize with a period.
"nno cf bvUv"+yviw"+pa.<esc>

