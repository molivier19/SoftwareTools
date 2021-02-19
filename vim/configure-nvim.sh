#/bin/bash

FILE=~/.config/nvim/init.vim
if test -f "$FILE";
then
    echo "$FILE file already exists. Exiting."

else
    curDir=`pwd`

    mkdir -p ~/.config/nvim
    ln -s $curDir/vimrc $FILE

    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    nvim -c :PlugInstall -c :qa

fi
