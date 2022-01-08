# Dotfiles

### Install  
```
mkdir ~/tmpdot
cd ~/tmpdot
git clone --bare https://github.com/MireaRadu/.dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
mv -f * ~
cd
rm tmpdot
```
