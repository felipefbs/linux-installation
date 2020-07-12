#Numix incon theme circle PPA
sudo add-apt-repository ppa:numix/ppa

#Insomnia 
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -

# Ulauncher 
sudo add-apt-repository ppa:agornostal/ulauncher


sudo aptitude update
sudo aptitude upgrade -y

sudo aptitude install git \                         #Git
                      plank \                       #Plank Dock
                      ulauncher \                   #Ulaucher
                      numix-icon-theme-circle \     #Numix Circle Icon Theme
                      insomnia                      #Insomnia

flatpak install flathub com.discordapp.Discord \    #Discord
                        com.spotify.Client \        #Spotify
                        org.videolan.VLC \          #VLC
                        com.slack.Slack \           #Slack
                        us.zoom.Zoom \              #Zoom
                        com.obsproject.Studio \     #OBS
                        cc.arduino.arduinoide \     #Arduino IDE

#Nord Theme
git clone https://github.com/EliverLara/Nordic.git
mv $HOME/.themes/Nordic-master $HOME/.themes/Nordic
#Nord Gnome Terminal
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh

wget https://gist.githubusercontent.com/felipefbs/9c60fa741942807976d5164299efa0ee/raw/0b50a91018ae860b24dcdedf18844aed35bfd798/goInstalation.sh
sudo sh goInstalation.sh

#ZSH
sudo aptitude install zsh
#Oh My zsh!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
