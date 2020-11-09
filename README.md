# Clone dotfiles

git clone https://spyderbg@github.com/spyderbg/dotfiles.git tmp &&
for f in $(\ls -A ./tmp); do mv "./tmp/$f" "./$f"; done &&
rmdir tmp


## Git local cofnig 

git config --local user.email "spyder_bg@yahoo.com"
git config --local user.name "Spyder"

## Windows vimfiles
vimfiles [P:\Vim]
mklink /D vimfiles P:\Vim

vimfiles - Copy
vimfiles_local
vimfiles_old
vmlogs

source $HOME/vimfiles/_gvimrc
source $HOME/vimfiles/_vimrc

