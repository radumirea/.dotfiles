# Dotfiles

### Install

Note: this overrides any conflicting files

```
mkdir ~/tmpdot
cd ~/tmpdot
git clone --bare https://github.com/MireaRadu/.dotfiles.git $HOME/tmpdot/.cfg
alias tmpconfig='/usr/bin/git --git-dir=$HOME/tmpdot/.cfg/ --work-tree=$HOME/tmpdot'
tmpconfig checkout
tmpconfig config --local status.showUntrackedFiles no
cp -r ~/tmpdot ~
rm -r ~/tmpdot
```
