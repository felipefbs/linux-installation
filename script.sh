#Numix incon theme circle PPA
sudo add-apt-repository ppa:numix/ppa

#Insomnia 
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -

# Ulauncher 
sudo add-apt-repository ppa:agornostal/ulauncher

sudo aptitude update
sudo aptitude upgrade -y

sudo aptitude install -y git \
                         plank \
                         ulauncher \
                         numix-icon-theme-circle \
                         insomnia \
                         zsh

flatpak install flathub com.discordapp.Discord \
                        com.spotify.Client \
                        org.videolan.VLC \
                        com.slack.Slack \
                        us.zoom.Zoom \
                        com.obsproject.Studio \
                        cc.arduino.arduinoide

THEMES="$HOME/.themes/"
if [ -d "$THEMES" ]; then
    git clone https://github.com/EliverLara/Nordic.git $HOME/.themes/Nordic
else
    mkdir $HOME/.themes/
    git clone https://github.com/EliverLara/Nordic.git $HOME/.themes/Nordic
fi

wget https://gist.githubusercontent.com/felipefbs/9c60fa741942807976d5164299efa0ee/raw/0b50a91018ae860b24dcdedf18844aed35bfd798/goInstalation.sh
sudo sh goInstalation.sh

#Oh My zsh!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
