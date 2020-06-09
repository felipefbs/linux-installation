#Numix incon theme circle PPA
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:agornostal/ulauncher

sudo aptitude update
sudo aptitude upgrade -y

#Nvidia drivers

#Git
sudo aptitude install git

#Snap
sudo apt install snapd -y

#Google Chrome
#Discord
sudo snap install discord
#Spotify
sudo snap install spotify
#VLC
sudo snap install vlc
#Slack
sudo snap install slack --classic
#Zoom
sudo snap install zoom-client
#Plank
sudo aptitude install plank
#ulauncher
sudo aptitude install ulauncher
#OBS Studio
sudo snap install obs-studio


#Numix Icon Theme
sudo aptitude install numix-icon-theme-circle
#Nord Theme
git clone https://github.com/EliverLara/Nordic.git
mv $HOME/.themes/Nordic-master $HOME/.themes/Nordic
#Nord Gnome Terminal
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh
#Capitaine Cursor Light


#Golang
wget https://gist.githubusercontent.com/felipefbs/9c60fa741942807976d5164299efa0ee/raw/0b50a91018ae860b24dcdedf18844aed35bfd798/goInstalation.sh
sudo sh goInstalation.sh


#VS Code
sudo snap install code --classic
#Arduino
sudo wget https://downloads.arduino.cc/arduino-1.8.12-linux64.tar.xz -O arduino.tar.xz
tar xf arduino.tar.xz
sudo rm arduino.tar.xz

sudo mv arduino* /opt
sudo bash /opt/arduino*/install.sh
#Insomnia
sudo snap install insomnia

#ZSH
sudo aptitude install zsh
#Oh My zsh!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#baixar o .zshrc
#baixar o bttv backup
