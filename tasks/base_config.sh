#!usr/bin/bash
git clone --bare https://github.com/zozitak/.dotfiles.git $HOME/.dotfiles
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
dotfiles checkout -f
dotfiles config --local status.showUntrackedFiles no
