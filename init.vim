" General
source $HOME/AppData/local/nvim/general/settings.vim
source $HOME/AppData/local/nvim/general/keys.vim
source $HOME/AppData/local/nvim/vim-plug/plugins.vim

if exists('g:vscode')
    source $HOME/AppData/local/nvim/vscode/settings.vim
else
    " Plugins
    source $HOME/AppData/local/nvim/plug-config/coc.vim
    source $HOME/AppData/local/nvim/plug-config/nerdtree.vim
    source $HOME/AppData/local/nvim/plug-config/vim-closetag.vim
    source $HOME/AppData/local/nvim/plug-config/signify.vim
    source $HOME/AppData/local/nvim/plug-config/vim-test.vim
    source $HOME/AppData/local/nvim/plug-config/vim-commentary.vim
    source $HOME/AppData/local/nvim/plug-config/fzf.vim
    source $HOME/AppData/local/nvim/plug-config/easymotion.vim
    " source $HOME/AppData/local/nvim/plug-config/vim-hexokinase.vim
    " luafile $HOME/AppData/local/nvim/plugAppData/local/nvim-treeseter.lua
    " Themes
    source $HOME/AppData/local/nvim/plug-config/markdown-preview.vim
    source $HOME/AppData/local/nvim/general/colors.vim
    source $HOME/AppData/local/nvim/themes/airline.vim
    source $HOME/AppData/local/nvim/themes/dracula.vim
endif
