#!/bin/bash
if [ ! -d "change-icon-folder-color" ]; then
    git clone https://github.com/EzequielBPullolil/change-icon-folder-color
fi

cd change-icon-folder-color || exit 1
chmod +x change_folder_color.sh

mkdir -p ~/.bin

mv -f change_folder_color.sh ~/.bin
if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.bashrc; then
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
    echo "Added ~/bin to PATH in ~/.bashrc"
fi


source ~/.bashrc

cd .. && rm -rf change-icon-folder-color