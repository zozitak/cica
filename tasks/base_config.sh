
set -eo pipefail

echo "Cloning dotfiles..." 
git clone --bare https://github.com/zozitak/.dotfiles.git $HOME/.dotfiles
echo "Deploy dotfiles..." 
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -f
echo "Set config: status.showUntrackedFiles no" 
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
echo "Set aliases..." 
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
