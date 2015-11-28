" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" NeoBundle 'https://github.com/vim-scripts/F6_Comment.git'
" NeoBundle 'https://github.com/rhysd/clever-f.vim.git'

" colorschemes
NeoBundle 'https://github.com/notpratheek/vim-luna.git', {'name': 'colors-luna'}
" NeoBundle 'https://github.com/notpratheek/vim-sol.git', {'name': 'colors-sol'}
NeoBundle 'https://github.com/jonathanfilip/vim-lucius.git', {'name': 'colors-lucius'}
NeoBundle 'https://github.com/reedes/vim-colors-pencil.git', {'name': 'colors-pencil'}
NeoBundle 'https://github.com/sjl/badwolf.git', {'name': 'colors-badwolf'}
NeoBundle 'https://github.com/sk1418/last256.git', {'name': 'colors-last256'}
" NeoBundle 'https://github.com/freeo/vim-kalisi.git', {'name': 'colors-kalisi'}
NeoBundle 'https://github.com/chriskempson/tomorrow-theme.git', {'rtp': 'vim'}
" NeoBundle 'https://github.com/romainl/Apprentice.git', {'name': 'colors-apprentice'}
NeoBundle 'https://github.com/tomasr/molokai', {'name': 'colors-molokai'}
NeoBundle 'https://github.com/morhetz/gruvbox.git', {'name': 'colors-gruvbox'}
" NeoBundle 'https://github.com/vim-scripts/sienna.git', {'name': 'colors-sienna'}
NeoBundle 'https://github.com/vim-scripts/earendel.git', {'name': 'colors-earendel'}
NeoBundle 'https://github.com/mkarmona/colorsbox.git', {'name': 'colors-colorsbox'}
NeoBundle 'https://github.com/mkarmona/materialbox.git', {'name': 'colors-materialbox'}
NeoBundle 'https://github.com/w0ng/vim-hybrid.git', {'name': 'colors-hybrid'}
" NeoBundle 'https://github.com/ikaros/smpl-vim.git', {'name': 'colors-smpl'}
" NeoBundle 'https://github.com/atelierbram/vim-colors_atelier-schemes.git', {'name': 'colors-atelier'}
" NeoBundle 'https://github.com/google/vim-colorscheme-primary.git', {'name': 'colors-primary'}

" colortools
NeoBundle 'https://github.com/ujihisa/unite-colorscheme.git'
" NeoBundle 'https://github.com/vim-scripts/ColorSchemeEditor.git'
NeoBundle 'https://github.com/xolox/vim-colorscheme-switcher.git'
" NeoBundle 'https://github.com/Taverius/vim-colorscheme-manager.git', {'name': 'colorscheme-manager'}
" NeoBundle 'https://github.com/ap/vim-css-color.git', {'name': 'css-color'}
NeoBundle 'https://github.com/Rykka/colorv.vim.git'
NeoBundle 'https://github.com/mattn/webapi-vim.git'
NeoBundle 'https://github.com/diepm/vim-rest-console.git', {'name': 'rest-console'}

" git
NeoBundle 'https://github.com/tpope/vim-fugitive', {'name': 'fugitive',  'augroup' : 'fugitive'}
NeoBundle 'https://github.com/tommcdo/vim-fugitive-blame-ext.git', {'name': 'fugitive-blame-ext'}
NeoBundle 'https://github.com/idanarye/vim-merginal.git', {'name': 'merginal'}
NeoBundle 'https://github.com/int3/vim-extradite.git', {'name': 'extradite'}
NeoBundle 'https://github.com/gregsexton/gitv.git'
NeoBundle 'https://github.com/cohama/agit.vim.git'
NeoBundle 'https://github.com/kmnk/vim-unite-giti.git', {'name': 'unite-giti'}
" NeoBundle 'https://github.com/mhinz/vim-signify.git', {'name': 'signify'}
NeoBundle 'https://github.com/airblade/vim-gitgutter.git', {'name': 'gitgutter'}
" NeoBundle 'https://github.com/WolfgangMehner/git-support.git'
" disabled because of duplicate help tag
" NeoBundle 'https://github.com/jreybert/vimagit'

NeoBundle 'https://github.com/junkblocker/patchreview-vim.git'
NeoBundle 'https://github.com/codegram/vim-codereview.git', {'name': 'codereview'}
" NeoBundle 'https://github.com/mmozuras/vim-github-comment.git', {'name': 'github-comment'}

NeoBundle 'https://conque.googlecode.com/svn/trunk', {'name': 'conque'}
" NeoBundle 'https://bitbucket.org/abudden/tagsignature'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-l9', {'name': 'l9'}
" NeoBundle 'https://bitbucket.org/sjl/gundo.vim', {'name': 'gundo'}

NeoBundle 'https://github.com/AndrewRadev/linediff.vim.git'
NeoBundle 'https://github.com/vsajko/BlockDiff.git'

NeoBundle 'https://github.com/AndrewRadev/sideways.vim.git'
NeoBundle 'https://github.com/AndrewRadev/splitjoin.vim.git'
NeoBundle 'https://github.com/sk1418/Join.git'
" NeoBundle 'https://github.com/jakobwesthoff/argumentrewrap.git'
NeoBundle 'https://github.com/FooSoft/vim-argwrap.git'

" NeoBundle 'https://github.com/Chiel92/vim-autoformat.git', {'name': 'autoformat'}

" javascript
" NeoBundle 'https://github.com/hushicai/vim-web-indent.git'
" NeoBundle 'https://github.com/vim-scripts/JavaScript-Indent.git'
" has wrong formatexpr, does not handle case
" NeoBundle 'https://github.com/pangloss/vim-javascript.git'
NeoBundle 'https://github.com/ternjs/tern_for_vim.git', {'build': {'unix': 'npm install'}}
"
" NeoBundle 'https://github.com/LStinson/TagmaTips.git'
NeoBundle 'https://github.com/Shougo/context_filetype.vim.git'
NeoBundle 'https://github.com/Shougo/neomru.vim.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git', {'name': 'unite'}
NeoBundle 'https://github.com/Shougo/unite-help.git'
NeoBundle 'https://github.com/Shougo/unite-outline.git'
NeoBundle 'https://github.com/Shougo/unite-session.git'
NeoBundle 'https://github.com/Shougo/unite-ssh.git'
NeoBundle 'https://github.com/osyo-manga/unite-filetype.git'
NeoBundle 'https://github.com/tsukkee/unite-tag.git'
NeoBundle 'https://github.com/ujihisa/unite-font.git'
NeoBundle 'https://github.com/Shougo/vimfiler.vim.git'
NeoBundle 'https://github.com/Shougo/vimproc.vim', {'name': 'vimproc', 'build': {'unix': g:make}}
NeoBundle 'https://github.com/Shougo/vimshell.vim.git'

NeoBundle 'https://github.com/SirVer/ultisnips.git'
NeoBundle 'https://github.com/honza/vim-snippets.git', {'name': 'ultisnip-snippets'}

NeoBundle 'https://github.com/airblade/vim-rooter.git', {'name': 'rooter'}
NeoBundle 'https://github.com/embear/vim-localvimrc.git', {'name': 'localvimrc'}

NeoBundle 'https://github.com/aklt/plantuml-syntax.git'

NeoBundle 'https://github.com/chrisbra/csv.vim.git'
NeoBundle 'https://github.com/derekwyatt/vim-scala.git', {'name': 'scala'}
NeoBundle 'https://github.com/elzr/vim-json.git', {'name': 'json'}
NeoBundle 'https://github.com/exu/pgsql.vim.git'
NeoBundle 'https://github.com/glts/vim-textobj-comment.git', {'name': 'textobj-comment'}
NeoBundle 'https://github.com/glts/vim-textobj-indblock.git', {'name': 'textobj-indblock'}
NeoBundle 'https://github.com/greyblake/vim-preview.git', {'name': 'preview'}
NeoBundle 'https://github.com/jcorbin/vim-searchmatch.git', {'name': 'searchmatch'}


NeoBundle 'https://github.com/jlanzarotta/bufexplorer.git'
NeoBundle 'https://github.com/vim-scripts/SelectBuf.git'

NeoBundle 'https://github.com/jmcantrell/vim-virtualenv.git', {'name': 'virtualenv'}
NeoBundle 'https://github.com/junegunn/vim-easy-align.git', {'name': 'easy-align'}
NeoBundle 'https://github.com/kana/vim-operator-user.git', {'name': 'operator-user'}
NeoBundle 'https://github.com/kana/vim-textobj-syntax.git', {'name': 'textobj-syntax'}
NeoBundle 'https://github.com/kana/vim-textobj-user.git', {'name': 'textobj-user'}
NeoBundle 'https://github.com/machakann/vim-patternjump.git', {'name': 'patternjump'}
NeoBundle 'https://github.com/majutsushi/tagbar'
NeoBundle 'https://github.com/michaeljsmith/vim-indent-object.git', {'name': 'indent-object'}

" search files
" NeoBundle 'https://github.com/mileszs/ack.vim.git'
NeoBundle 'https://github.com/rking/ag.vim.git'
" NeoBundle 'https://github.com/dyng/ctrlsf.vim.git'

" NeoBundle 'https://github.com/mjbrownie/swapit.git'
NeoBundle 'https://github.com/nishigori/increment-activator.git'
NeoBundle 'https://github.com/osyo-manga/vim-textobj-multiblock.git', {'name': 'textobj-multiblock'}
NeoBundle 'https://github.com/rhysd/vim-operator-surround.git', {'name': 'operator-surround'}
NeoBundle 'https://github.com/rhysd/vim-textobj-anyblock.git', {'name': 'textobj-anyblock'}
NeoBundle 'https://github.com/rhysd/vim-textobj-continuous-line.git', {'name': 'textobj-continuous-line'}
NeoBundle 'https://github.com/scrooloose/syntastic.git'
NeoBundle 'https://github.com/sk1418/HowMuch.git'
NeoBundle 'https://github.com/t9md/vim-choosewin.git', {'name': 'choosewin'}
NeoBundle 'https://github.com/t9md/vim-quickhl.git', {'name': 'quickhl'}
NeoBundle 'https://github.com/terryma/vim-expand-region.git', {'name': 'expand-region'}
NeoBundle 'https://github.com/terryma/vim-multiple-cursors.git', {'name': 'multiple-cursors'}

NeoBundle 'https://github.com/sk1418/QFGrep.git'
NeoBundle 'https://github.com/thinca/vim-qfreplace.git', {'name': 'qfreplace'}
NeoBundle 'https://github.com/AndrewRadev/writable_search.vim.git'

NeoBundle 'https://github.com/thinca/vim-ref.git', {'name': 'ref'}
NeoBundle 'https://github.com/thinca/vim-textobj-between.git', {'name': 'textobj-between'}
NeoBundle 'https://github.com/timcharper/textile.vim.git'
NeoBundle 'https://github.com/tpope/vim-commentary.git', {'name': 'commentary'}
NeoBundle 'https://github.com/tpope/vim-dispatch.git', {'name': 'dispatch'}
NeoBundle 'https://github.com/tpope/vim-pathogen.git', {'name': 'pathogen'}
NeoBundle 'https://github.com/tpope/vim-repeat.git', {'name': 'repeat'}
NeoBundle 'https://github.com/tpope/vim-scriptease.git', {'name': 'scriptease'}
" NeoBundle 'https://github.com/tpope/vim-speeddating.git', {'name': 'speeddating'}
NeoBundle 'https://github.com/tpope/vim-surround.git', {'name': 'surround'}

NeoBundle 'https://github.com/vim-scripts/Notes.git'
NeoBundle 'https://github.com/vim-scripts/VimSpy.git'
NeoBundle 'https://github.com/vim-scripts/WhereFrom.git'
" NeoBundle 'https://github.com/vim-scripts/closeb.git'
NeoBundle 'https://github.com/vim-scripts/genutils'
NeoBundle 'https://github.com/vim-scripts/listmaps.vim.git'
NeoBundle 'https://github.com/vim-scripts/marvim.git'
NeoBundle 'https://github.com/vim-scripts/rfc-syntax.git'
NeoBundle 'https://github.com/vim-scripts/showhide.vim.git'
NeoBundle 'https://github.com/vim-voom/VOoM.git', {'name': 'VOoM'}
NeoBundle 'https://github.com/vsajko/Asciitable.vim.git'

" python specific
NeoBundle 'https://github.com/bps/vim-textobj-python.git', {'name': 'textobj-python'}
NeoBundle 'https://github.com/heavenshell/vim-pydocstring.git', {'name': 'pydocstring'}
NeoBundle 'https://github.com/vim-scripts/python.vim'
NeoBundle 'https://github.com/voithos/vim-python-matchit.git', {'name': 'python-matchit'}
NeoBundle 'https://github.com/hynek/vim-python-pep8-indent.git', {'name': 'python-pep8-indent'}
NeoBundle 'https://github.com/vim-scripts/pylint.vim.git'
NeoBundle 'https://github.com/dbsr/vimpy.git'
" python test
" NeoBundle 'https://github.com/alfredodeza/pytest.vim.git'
" NeoBundle 'https://github.com/JarrodCTaylor/vim-python-test-runner.git', {'name': 'python-test-runner'}
NeoBundle 'https://github.com/ameade/qtpy-vim.git'


NeoBundle 'https://github.com/AndrewRadev/inline_edit.vim.git'
NeoBundle 'https://github.com/chrisbra/NrrwRgn.git'

NeoBundle 'https://github.com/vsajko/sessionman.vim.git'
NeoBundle 'https://github.com/xolox/vim-misc.git', {'name': 'misc_xolox'}
" NeoBundle 'https://github.com/danro/rename.vim.git'
" NeoBundle 'https://github.com/malithsen/trello-vim'
" NeoBundle 'https://github.com/lambdalisue/vim-django-support.git'
" NeoBundle 'https://github.com/mjbrownie/vim-htmldjango_omnicomplete.git'
"!!FIXME need to check this one https://github.com/ap/vim-buftabline.git
" NeoBundle 'https://github.com/vim-scripts/diffchar.vim.git' " FIXME no doc, add to undocumented, maps too much characters eg <f8>
NeoBundle 'https://github.com/Raimondi/delimitMate.git'

NeoBundle 'https://github.com/rstacruz/sparkup.git', {'rtp': 'vim/'}
NeoBundle 'https://github.com/mattn/emmet-vim.git'

NeoBundle "https://github.com/Shougo/vinarise.vim.git" " hex editor
NeoBundle "https://github.com/tpope/vim-eunuch.git", {'name': 'eunuch'}
NeoBundle "https://github.com/mbbill/undotree.git"
NeoBundle 'https://github.com/regedarek/ZoomWin.git'
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides.git'
" NeoBundle 'https://github.com/Yggdroot/indentLine.git'
" NeoBundle 'https://github.com/severin-lemaignan/vim-minimap.git', {'name': 'minimap'}
" indent motions
" NeoBundle 'https://github.com/jeetsukumaran/vim-indentwise.git', {'name': 'indentwise'}

" bookmarks, marks, signs
NeoBundle 'https://github.com/kshenoy/vim-signature.git', {'name': 'signature'}
" NeoBundle 'https://github.com/jeetsukumaran/vim-markology.git', {'name': 'markology'}
NeoBundle 'https://github.com/tacroe/unite-mark.git'
" NeoBundle 'https://github.com/MattesGroeger/vim-bookmarks.git', {'name': 'bookmarks'}
"
" YouCompleteMe
let g:neobundle#install_process_timeout = 1500
NeoBundle 'https://github.com/Valloric/YouCompleteMe', {'build': {'unix': './install.py --clang-completer --gocode-completer'}}
" NeoBundle 'https://github.com/Valloric/YouCompleteMe'

" NeoBundle 'https://github.com/python-rope/ropevim.git'
" NeoBundle 'https://github.com/ivanov/vim-ipython.git', {'name': 'ipython'}

