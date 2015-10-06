git clone https://github.com/jmjoy/vimrc.git ~/.vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'set runtimepath+=~/.vim

source ~/.vim/vimrcs/plugins_ls.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim' > ~/.vimrc

vim +PluginInstall +qall
