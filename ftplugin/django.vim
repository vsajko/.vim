if &filetype == 'django'
    set commentstring={#\ %s\ #}
endif
setlocal dictionary+=/home/vsajko/.vim/dictionary/django.txt
let djangofilesourced=1
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

nmenu Django.surround_v<Tab>ysiwv\ ->\ {{\ \\r\ }} :execute "normal ysiwv"<CR>
nmenu Django.surround_{<Tab>ysiw{\ ->\ {{\ \\r\ }} :execute "normal ysiw{"<CR>
nmenu Django.surround_%<Tab>ysiw%\ ->\ {%\ \\r\ %} :execute "normal ysiw%"<CR>
nmenu Django.surround_b<Tab>ysiwb\ ->\ {%\ block\ %} :execute "normal ysiwb"<CR>
nmenu Django.surround_i<Tab>ysiwi\ ->\ {%\ if\ %} :execute "normal ysiwi"<CR>
nmenu Django.surround_w<Tab>ysiww\ ->\ {%\ with\ %} :execute "normal ysiww"<CR>
nmenu Django.surround_f<Tab>ysiwf\ ->\ {%\ for\ %} :execute "normal ysiwf"<CR>
nmenu Django.surround_c<Tab>ysiwc\ ->\ {%\ comment\ %} :execute "normal ysiwc"<CR>
