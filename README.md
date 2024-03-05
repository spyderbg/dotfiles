# Clone dotfiles

```
git clone git@github.com:spyderbg/dotfiles.git tmp && \ 
for f in $(\ls -A ./tmp); do mv "./tmp/$f" "./$f"; done && \
rmdir tmp && \
source .bashrc
```


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
```
drun --name soh-mysql -e MYSQL_ROOT_PASSWORD=admin -p 3307:3306/tcp -d mysql:8.0
```

```
drun --name soh-mariadb -e MYSQL_ROOT_PASSWORD=admin -p 3308:3306/tcp -d mariadb:10.5-focal
```

```
drun --name myria-redis -d redis:6.0.16 -p 6379:6379/tcp
```

```
drun --name myria-postgres -e POSTGRES_PASSWORD=123456 -p 5432:5432/tcp -d postgres:14.0
```

```
netsh interface portproxy add v4tov4 listenport=7070 listenaddress=0.0.0.0 connectport=7070 connectaddress=172.17.25.7
```

```
netsh interface portproxy add v4tov4 listenport=6379 listenaddress=0.0.0.0 connectport=6379 connectaddress=172.17.25.7
```

```
netsh interface portproxy add v4tov4 listenport=5432 listenaddress=0.0.0.0 connectport=5432 connectaddress=172.17.25.7
```

## Ubuntu net-tools (ifconfig)
```
sudo apt install net-tools
```

## Ununty exFat 

```
sudo apt install exfat-fuse exfat-utils
```

## Ubuntu sshd

```
sudo apt update

sudo apt install openssh-server

sudo ufw allow ssh
```

## SoH libraries
 
 ```
 sudo apt install cmake -y
 
 sudo apt install libboost1.71-dev mysql-client-8.0 libreadline-dev -y
 ```
 
 ## AmdGpu-Clocks
 
 [amdgpu-clocks](https://github.com/sibradzic/amdgpu-clocks)
 
 ## Ubuntu keyboard
 
```
echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
```
 
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

clear Lock
keycode 66 = Escape NoSymbol Escape        #this will make Caps Lock to act as Esc
```

```
['caps:escape']
```

## Home IP
```
82.103.77.45
```

```
82.103.76.84 
```

## Office IP
 ```
 92.247.193.20
 ```
 
 ## Git update index
 git update-index --chmod=+x ./scripts/build.sh
 
 ## SSH add private key
 ```
 eval `ssh-agent`
 ```
 ```
 ssh-add ~/.ssh/id_ed25519_tritan
 ```
 ```
 ssh-add ~/.ssh/id_ed25519_cricket
 ```
 
 ## Socket is forbidden
 ```
 net stop hns && net start hns
 ```
 
 ## List disk space
 ```
 df -h | awk '{ printf "%8s %6s\n", $6, $4 }' | grep "\/mnt\/[s,t,u,v,w] "
 ```
 
 ## How to SSH into WSL2 on Windows
 ```
 sudo apt install openssh-server
 ```
 ```
/etc/ssh/sshd_config

...STUFF ABOVE THIS...
Port 2222
#AddressFamily any
ListenAddress 0.0.0.0
#ListenAddress ::

...STUFF BELOW  THIS...
```
```
service ssh start
```
```
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=22 connectaddress=172.28.250.52 connectport=22
```
```
netsh advfirewall firewall add rule name="Open Port 2222 for WSL2" dir=in action=allow protocol=TCP localport=2222
```
```
netsh interface portproxy show v4tov4
```
```
netsh int portproxy reset all
```
```
netsh interface portproxy delete v4tov4 listenaddress=0.0.0.0 listenport=22
```

## How to remove a single entry from known_hosts
```
ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.71
```

## How to install libssl v1.0 on Ubuntu (fix Unity strange build issue) 
```
wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.13_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0-dev_1.0.2n-1ubuntu5.13_amd64.deb
sudo dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.13_amd64.deb 
sudo dpkg -i libssl1.0-dev_1.0.2n-1ubuntu5.13_amd64.deb
```

78.83.65.31
