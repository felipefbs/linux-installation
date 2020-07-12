mkdir $HOME/Downloads/linux-installation
cd $HOME/Downloads/linux-installation

# Additional repositories
## Numix incon theme circle PPA
sudo add-apt-repository -y ppa:numix/ppa

## Insomnia
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -

## Ulauncher
sudo add-apt-repository ppa:agornostal/ulauncher

# Updating repositories and upgrading packages
sudo aptitude update && sudo aptitude upgrade -y

# Installing packages
## aptitude packages
sudo aptitude install -y git \
                         plank \
                         ulauncher \
                         numix-icon-theme-circle \
                         insomnia \
                         zsh

## flatpak packages
flatpak install flathub com.discordapp.Discord \
                        com.spotify.Client \
                        org.videolan.VLC \
                        com.slack.Slack \
                        us.zoom.Zoom \
                        com.obsproject.Studio \
                        cc.arduino.arduinoide

## Nordic theme :purple_heart:
THEMES="$HOME/.themes/"
if [ -d "$THEMES" ]; then
    git clone https://github.com/EliverLara/Nordic.git $HOME/.themes/Nordic
else
    mkdir $HOME/.themes/
    git clone https://github.com/EliverLara/Nordic.git $HOME/.themes/Nordic
fi

## My shell script to install Golang
wget https://gist.githubusercontent.com/felipefbs/9c60fa741942807976d5164299efa0ee/raw/0b50a91018ae860b24dcdedf18844aed35bfd798/goInstalation.sh
sudo sh goInstalation.sh

## Oh My zsh! Framework
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## SpaceShip theme for Oh My Zsh!
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
