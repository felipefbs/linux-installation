#Numix incon theme circle PPA
sudo add-apt-repository ppa:numix/ppa

#Insomnia 
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -

# Ulauncher 
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
flatpak install flathub com.discordapp.Discord
#Spotify
flatpak install flathub com.spotify.Client
#VLC
flatpak install flathub org.videolan.VLC
#Slack
flatpak install flathub com.slack.Slack
#Zoom
flatpak install flathub us.zoom.Zoom
#Plank
sudo aptitude install plank
#ulauncher
sudo aptitude install ulauncher
#OBS Studio
flatpak install flathub com.obsproject.Studio


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
flatpak install flathub com.visualstudio.code
#Arduino
flatpak install flathub cc.arduino.arduinoide
#Insomnia
sudo apt-get install insomnia
#Geany
flatpak install flathub org.geany.Geany

#ZSH
sudo aptitude install zsh
#Oh My zsh!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#baixar o .zshrc
#baixar o bttv backup
