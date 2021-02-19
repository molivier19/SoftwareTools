#/bin/bash

FILE=~/.vimrc
if test -f "$FILE";
then
    echo "$FILE file already exists. Exiting."

else
    curDir=`pwd`

    ln -s $curDir/vimrc $FILE

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    vim -c :PlugInstall -c :qa

fi
