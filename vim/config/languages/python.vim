au BufNewFile,BufRead *.py setlocal filetype=python
         \ textwidth=79
         \ colorcolumn=80
         \ shiftwidth=4
         \ tabstop=4
         \ softtabstop=4
         \ expandtab

autocmd FileType python inoremap <leader>r <esc>:w<cr><c-c> :!clear;python3 %<CR>
autocmd FileType python nnoremap <leader>r <esc>:w<cr><c-c> :!clear;python3 %<CR>
autocmd FileType python vnoremap <leader>r <esc>:w<cr><c-c> :!clear;python3 %<CR>









au BufNewFile,BufRead *.r setlocal filetype=r
         \ textwidth=79
         \ colorcolumn=80
         \ shiftwidth=4
         \ tabstop=4
         \ softtabstop=4
         \ expandtab

autocmd FileType r inoremap <leader>r <esc>:w<cr><c-c> :!clear;Rscript %<CR>
autocmd FileType r nnoremap <leader>r <esc>:w<cr><c-c> :!clear;Rscript %<CR>
autocmd FileType r vnoremap <leader>r <esc>:w<cr><c-c> :!clear;Rscript %<CR>


autocmd FileType python inoremap <leader>dj <esc>:w<cr><c-c> :!sudo systemctl restart lucas nginx<CR>
autocmd FileType python nnoremap <leader>dj <esc>:w<cr><c-c> :!sudo systemctl restart lucas nginx<CR>
autocmd FileType python vnoremap <leader>dj <esc>:w<cr><c-c> :!sudo systemctl restart lucas nginx<CR>
autocmd FileType html inoremap <leader>dj <esc>:w<cr><c-c> :!sudo systemctl restart lucas nginx<CR>
autocmd FileType html nnoremap <leader>dj <esc>:w<cr><c-c> :!sudo systemctl restart lucas nginx<CR>
autocmd FileType html vnoremap <leader>dj <esc>:w<cr><c-c> :!sudo systemctl restart lucas nginx<CR>

autocmd FileType python inoremap <leader>dk <esc>:w<cr><c-c> :!source /var/www/venv/bin/activate && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py makemigrations && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py migrate<CR>
autocmd FileType python nnoremap <leader>dk <esc>:w<cr><c-c> :!source /var/www/venv/bin/activate && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py makemigrations && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py migrate<CR>
autocmd FileType python vnoremap <leader>dk <esc>:w<cr><c-c> :!source /var/www/venv/bin/activate && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py makemigrations && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py migrate<CR>
autocmd FileType html inoremap <leader>dk <esc>:w<cr><c-c> :!source /var/www/venv/bin/activate && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py makemigrations && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py migrate<CR>
autocmd FileType html nnoremap <leader>dk <esc>:w<cr><c-c> :!source /var/www/venv/bin/activate && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py makemigrations && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py migrate<CR>
autocmd FileType html vnoremap <leader>dk <esc>:w<cr><c-c> :!source /var/www/venv/bin/activate && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py makemigrations && /var/www/venv/bin/python3 /var/www/lvvieira/manage.py migrate<CR>
