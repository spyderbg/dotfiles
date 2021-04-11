# Clone dotfiles

``git clone https://spyderbg@github.com/spyderbg/dotfiles.git tmp &&
for f in $(\ls -A ./tmp); do mv "./tmp/$f" "./$f"; done &&
rmdir tmp``


## Windows vimfiles
vimfiles [P:\Vim]
``mklink /D vimfiles P:\Vim``

vimfiles - Copy
vimfiles_local
vimfiles_old
vmlogs

source $HOME/vimfiles/_gvimrc

source $HOME/vimfiles/_vimrc



## Cmake build 
    ``mkdir build && cd build \
    cmake ../``
    ``make``


## Run mysql in docker container
``drun --name soh-mysql -e MYSQL_ROOT_PASSWORD=admin -p 3307:3306/tcp -d mysql:8.0``

## Ubuntu net-tools (ifconfig)
``sudo apt install net-tools``
