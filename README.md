# dotfiles

### first commit for dotfiles


### first commit for dotfiles
### first commit for dotfiles
### first commit for dotfiles

git clone https://spyderbg@github.com/spyderbg/dotfiles.git tmp &&
cd tmp &&
for f in $(\ls -A); do mv "$f" "../$f"; done &&
rm -rf tmp

