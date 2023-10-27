#!usr/bin/bash
git clone --bare https://github.com/zozitak/.dotfiles.git $HOME/.dotfiles
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
exec bash
dotfiles checkout -f
dotfiles config --local status.showUntrackedFiles no
