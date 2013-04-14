" Basic setup stuff
   set nocompatible
   set noexrc
   set cpoptions=aABceFsmq
   syntax on

" Color stuff
   if ! has("gui_running")
      set t_Co=256 " Force Vim to use 256 colors
   endif
   let g:zenburn_high_Contrast=1
   colors zenburn
   colorscheme zenburn

" General
   filetype plugin indent on
   set encoding=utf-8
   set autochdir
   set title
   set backspace=indent,eol,start
   set backup
   set backupdir=~/.vim/backup
   set clipboard+=unnamed
   set directory=~/.vim/tmp
   set fileformats=unix,dos,mac
   set hidden
   set iskeyword+=_,$,@,%,#
   set mouse=
   set whichwrap=b,s,<,>,~,[,]
   set wildmenu
   set wildignore=*.o,*.obj,*.out,*.jpg,*.gif,*.png
   set wildmode=list:longest

" UI customization
   set cursorline
   set lazyredraw
   set linespace=0
   if version >= 703
      set relativenumber
   endif
   set list
   set listchars=tab:>-,trail:-
   set nohlsearch
   set nostartofline
   set novisualbell
   set number
   set numberwidth=5
   set report=0
   set scrolloff=13
   set shortmess=aOstT
   set showcmd
   set showmatch
   set matchtime=3

" Text formatting
   set completeopt=
   set expandtab
   set formatoptions=rq
   set ignorecase
   set infercase
   set nowrap
   set shiftround
   set smartcase
   set shiftwidth=3
   set softtabstop=3
   set tabstop=8

" C folding
   set foldenable
   set foldmarker={,}
   set foldmethod=marker
   set foldlevel=100
   set foldopen=block,hor,mark,percent,quickfix,tag

   function SimpleFoldText()
      return getline(v:foldstart).' '
   endfunction
   set foldtext=SimpleFoldText()

" Mappings
   map <down> <ESC>:bn<RETURN>
   map <up> <ESC>:bp<RETURN>
   map <right> <ESC>:Tlist<RETURN>
   map <left> <ESC>:NERDTreeToggle<RETURN>
   let mapleader = ","

" Plugins
   " Taglist
      let Tlist_Auto_Open=0
      let Tlist_Compact_Format=1
      let Tlist_Ctags_Cmd='ctags'
      let Tlist_Enable_Fold_Column=0
      let Tlist_Exist_OnlyWindow=1
      let Tlist_File_Fold_Auto_Close=0
      let Tlist_Sort_Type="name"
      let Tlist_Use_Right_Window=1
      let Tlist_WinWidth=40
   " Vundle (Unix1 vim is oudated and doesn't support vundle)
      if version >= 702
         filetype off
         set rtp+=~/.vim/bundle/vundle/
         call vundle#rc()
         Bundle 'gmarik/vundle'
         Bundle 'Lokaltog/vim-powerline'
         Bundle 'jdonaldson/vaxe'
         Bundle 'Shougo/neocomplcache'
         Bundle 'tomasr/molokai'
         Bundle 'scrooloose/nerdcommenter'
         "Bundle 'scrooloose/syntastic'
         Bundle 'fruity.vim'
         Bundle 'scrooloose/nerdtree'
         Bundle 'taglist.vim'
         filetype plugin indent on
      endif
   " Powerline
      set laststatus=2
      let g:Powerline_symbols = 'fancy'
   " neocomplcache
      let g:neocomplcache_enable_at_startup = 1
      let g:neocomplcache_enable_smart_case = 1
      let g:neocomplcache_enable_camel_case_completion = 1
      let g:neocomplcache_enable_underbar_completion = 1
      let g:neocomplcache_min_syntax_length = 3
      if !exists('g:neocomplcache_omni_patterns')
         let g:neocomplcache_omni_patterns = {}
      endif
      let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
      let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
   " vaxe
   " Syntastic
      let g:syntastic_enable_balloons = 0
      let g:syntastic_auto_loc_list = 1
