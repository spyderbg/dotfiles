# Clone dotfiles

``git clone git@github.com:spyderbg/dotfiles.git tmp &&
for f in $(\ls -A ./tmp); do mv "./tmp/$f" "./$f"; done &&
rmdir tmp && source .bashrc``


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
    mkdir build && cd build
    cmake ../
    make


## Run mysql in docker container
`drun --name soh-mysql -e MYSQL_ROOT_PASSWORD=admin -p 3307:3306/tcp -d mysql:8.0`

`drun --name soh-mariadb -e MYSQL_ROOT_PASSWORD=admin -p 3308:3306/tcp -d mariadb:10.5-focal`

## Ubuntu net-tools (ifconfig)
`sudo apt install net-tools`

## Ubuntu sshd

`sudo apt update`

`sudo apt install openssh-server`

`sudo ufw allow ssh`

## SoH libraries
 
 `sudo apt install cmake -y`
 
 `sudo apt install libboost1.71-dev mysql-client-8.0 libreadline-dev -y`
 
 ## AmdGpu-Clocks
 
 [amdgpu-clocks](https://github.com/sibradzic/amdgpu-clocks)
 
 ## Ubuntu keyboard
 
```echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode```
 
```
clear control
clear mod4

keycode 105 = 
keycode 206 =

keycode 133 = Control_L NoSymbol Control_L
keycode 134 = Control_R NoSymbol Control_R
keycode 37 = Super_L NoSymbol Super_L

add control = Control_L
add control = Control_R
add mod4 = Super_L
```

```['caps:escape']```

 
 
