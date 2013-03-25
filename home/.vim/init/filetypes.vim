" don't relay on context for md markdown extensions
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead *.tmpl,*.j2 set ft=jinja 
