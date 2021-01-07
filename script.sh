# Preparations
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -G ulauncher
cd ulauncher/
makepkg -si
cd ..

sudo pacman -S plank    \ 
               psensor  \ 
               putty    \
               geany    

sudo snap install brave             \
                  discord           \
                  code --classic    \
                  insomnia          \
                  htop              \
                  spotify
                  