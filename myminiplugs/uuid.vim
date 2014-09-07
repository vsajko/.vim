function! GenerateUUID()
 
python << EOF
import uuid
import vim
 
# output a uuid to the vim variable for insertion below
vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4().hex))
 
EOF
 
" insert the python generated uuid into the current cursor's position
:execute "normal a" . generatedUUID . ""
 
endfunction
 
"initialize the generateUUID function here and map it to a local command
command! Uuid :call GenerateUUID()
