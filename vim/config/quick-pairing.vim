"======================================================================
" QUICK PAIRING QUICK PAIRING QUICK PAIRING QUICK PAIRING QUICK PAIRING
"======================================================================

"INSERT
"INSERT
"INSERT
"INSERT
"INSERT
"INSERT
"INSERT


" INSERT TEXT (Apply pairing before text insertion)
inoremap a' ''<esc>i
inoremap a" ""<esc>i
inoremap a( ()<esc>i
inoremap a[ []<esc>i
inoremap a{ {}<esc>i
inoremap a< <><esc>i

function! Insert_On_Normal_1()
   let ans = EndLine()

   if ans ==# 0

       execute "normal! i''"
       execute "normal! a"
       :startinsert

   elseif ans ==# 1

       execute "normal! a ''"
       execute "normal! a"
       :startinsert

   endif
endfunction
noremap a' :call Insert_On_Normal_1()<CR>

function! Insert_On_Normal_2()
   let ans = EndLine()

   if ans ==# 0

       execute 'normal! i""'
       execute 'normal! a'
       :startinsert

   elseif ans ==# 1

       execute 'normal! a ""'
       execute 'normal! a'
       :startinsert

   endif
endfunction
noremap a" :call Insert_On_Normal_2()<CR>

"EDIT
"EDIT
"EDIT
"EDIT
"EDIT
"EDIT
"EDIT


" APPLY TO ONE WORD AFTER ITS INSERTION
noremap <space>' mmwbcw''<Esc>P`m
noremap <space>" mmwbcw""<Esc>P`m
noremap <space>( mmwbcw()<Esc>P`m
noremap <space>[ mmwbcw[]<Esc>P`m
noremap <space>{ mmwbcw{}<Esc>P`m
noremap <space>< mmwbcw<><Esc>P`m

noremap <space>-' <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/'<c-r>=GetVisual()<cr>'/g<CR>`m
noremap <space>-" <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/"<c-r>=GetVisual()<cr>"/g<CR>`m
noremap <space>-( <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/(<c-r>=GetVisual()<cr>)/g<CR>`m
noremap <space>-[ <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/[<c-r>=GetVisual()<cr>]/g<CR>`m
noremap <space>-{ <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/{<c-r>=GetVisual()<cr>}/g<CR>`m
noremap <space>-< <Esc>mm0v$<left>:s/<c-r>=GetVisual()<cr>/<<c-r>=GetVisual()<cr>>/g<CR>`m

vnoremap <space>v' <Esc>mm:s/<c-r>=GetVisual()<cr>/'<c-r>=GetVisual()<cr>'/g<CR>`m
vnoremap <space>v" <Esc>mm:s/<c-r>=GetVisual()<cr>/"<c-r>=GetVisual()<cr>"/g<CR>`m
vnoremap <space>v( <Esc>mm:s/<c-r>=GetVisual()<cr>/(<c-r>=GetVisual()<cr>)/g<CR>`m
vnoremap <space>v[ <Esc>mm:s/<c-r>=GetVisual()<cr>/[<c-r>=GetVisual()<cr>]/g<CR>`m
vnoremap <space>v{ <Esc>mm:s/<c-r>=GetVisual()<cr>/{<c-r>=GetVisual()<cr>}/g<CR>`m
vnoremap <space>v< <Esc>mm:s/<c-r>=GetVisual()<cr>/<<c-r>=GetVisual()<cr>>/g<CR>`m

" DELETE BETWEEN PAIRINGS AND INSERT
noremap' d' :normal! F'lvf'h<CR>xi
noremap d" :normal! F"lvf"h<CR>xi
noremap d( :normal! F(lvf)h<CR>xi
noremap d[ :normal! F[lvf]h<CR>xi
noremap d{ :normal! F{lvf}h<CR>xi
noremap d< :normal! F<lvf>h<cr>xi


" QUICK PAIRING '' WORDS WITH COMMA BETWEEN THEM
function! QuickPairingList_1()
   let ans = StartWord()
   if ans ==# 0
      execute "normal! mmwbcw''"
      execute "normal! P`mee"
      execute "normal! w"
   elseif ans ==# 1
      execute "normal! mmcw''"
      execute "normal! P`mee"
      execute "normal! w"
   endif
endfunction
noremap w' :call QuickPairingList_1()<CR>

" QUICK PAIRING '' WORDS WITHOUT COMMA BETWEEN THEM
function! QuickPairingList_2()
   let ans = StartWord()
   if ans ==# 0
      execute "normal! mmwbcw''"
      execute "normal! P`meelcl, "
      execute "normal! w"
   elseif ans ==# 1
      execute "normal! mmcw''"
      execute "normal! P`meelcl, "
      execute "normal! w"
   endif
endfunction
noremap <leader>' :call QuickPairingList_2()<CR>

" QUICK PAIRING "" WORDS WITH COMMA BETWEEN THEM
function! QuickPairingList_3()
   let ans = StartWord()
   if ans ==# 0
      execute 'normal! mmwbcw""'
      execute 'normal! P`mee'
      execute 'normal! w'
   elseif ans ==# 1
      execute 'normal! mmcw""'
      execute 'normal! P`mee'
      execute 'normal! w'
   endif
endfunction
noremap w" :call QuickPairingList_3()<CR>

" QUICK PAIRING "" WORDS WITHOUT COMMA BETWEEN THEM
function! QuickPairingList_4()
   let ans = StartWord()
   if ans ==# 0
      execute 'normal! mmwbcw""'
      execute 'normal! P`meelcl, '
      execute 'normal! w'
   elseif ans ==# 1
      execute 'normal! mmcw""'
      execute 'normal! P`meelcl, '
      execute 'normal! w'
   endif
endfunction
noremap <leader>" :call QuickPairingList_4()<CR>


" QUICK PAIRING '' SEVERAL WORDS WITHOUT COMMA BETWEEN THEM
function! QuickPairingList_5()
   execute 'normal! 0'
   let ans = StartWord()
   let n = execute(':s/\<[a-zA-Z]//gn')
   let n2 = n[0:-18]
   let n3 = str2float(n2)
   let n4 = str2nr(n3)
   echo n4
   for i in range(1,n4)
      if ans ==# 0
         execute "normal! mmwbcw''"
         execute "normal! P`meelcl, "
         execute "normal! w"
      elseif ans ==# 1
         execute "normal! mmcw''"
         execute "normal! P`meelcl, "
         execute "normal! w"
      endif
   endfor
   "execute 'normal! 0icbind('
   "execute 'normal! $A)'
endfunction
noremap <leader>l' :call QuickPairingList_5()<CR>

" QUICK PAIRING "" SEVERAL WORDS WITHOUT COMMA BETWEEN THEM
function! QuickPairingList_6()
   execute 'normal! 0'
   let ans = StartWord()
   let n = execute(':s/\<[a-zA-Z]//gn')
   let n2 = n[0:-18]
   let n3 = str2float(n2)
   let n4 = str2nr(n3)
   echo n4
   for i in range(1,n4)
      if ans ==# 0
         execute 'normal! mmwbcw""'
         execute "normal! P`meelcl, "
         execute "normal! w"
      elseif ans ==# 1
         execute 'normal! mmwbcw""'
         execute "normal! P`meelcl, "
         execute "normal! w"
      endif
   endfor
   "execute 'normal! 0icbind('
   "execute 'normal! $A)'
endfunction
noremap <leader>l" :call QuickPairingList_6()<CR>

function! QuickPairingList_7()

   execute 'normal! 0'
   let ans = StartWord()
   let n = execute(':s/\<[a-zA-Z]//gn')
   let n2 = n[0:-18]
   let n3 = str2float(n2)
   let n4 = str2nr(n3)
   echo n4

   for i in range(1,n4)
      if ans ==# 0

         execute "normal! mmwbcw''"
         execute "normal! P`meelcl "
         execute "normal! w"

      elseif ans ==# 1

         execute "normal! mmcw''"
         execute "normal! P`meelcl "
         execute "normal! w"

      endif
   endfor

   "execute 'normal! 0icbind('
   "execute 'normal! $A)'
endfunction
noremap <leader>L' :call QuickPairingList_7()<CR>

function! QuickPairingList_8()

   execute 'normal! 0'
   let ans = StartWord()
   let n = execute(':s/\<[a-zA-Z]//gn')
   let n2 = n[0:-18]
   let n3 = str2float(n2)
   let n4 = str2nr(n3)
   echo n4

   for i in range(1,n4)
      if ans ==# 0

         execute 'normal! mmwbcw""'
         execute "normal! P`meelcl "
         execute "normal! w"

      elseif ans ==# 1

         execute 'normal! mmwbcw""'
         execute "normal! P`meelcl "
         execute "normal! w"

      endif
   endfor

   "execute 'normal! 0icbind('
   "execute 'normal! $A)'
endfunction
noremap <leader>L" :call QuickPairingList_8()<CR>

"" PAIR SELECTED AREA SAME LINE
"function! PairSelected1()
"   let line_start = getpos("'<")
"   let line_end = getpos("'>")
"   echo line_start
"   echo line_end
"endfunction
"vnoremap <leader>v' :call PairSelected1()<cr>
"function! PairSelected2()
"   let column_start = getpos("'<")[2]
"   let column_end = getpos("'>")[2]
"   let column_start = str2nr(column_start) - 1
"   let column_end = str2nr(column_end) - 1
"   execute "normal! " . column_start . "|"
"   execute 'normal! i"'
"   execute "normal! a"
"   execute "normal! " . column_end . "l"
"   execute 'normal! i"'
"   execute "normal! \<C-c>"
"endfunction
"vnoremap <leader>v" :call PairSelected2()<cr>
