mkdir $HOME/Downloads/linux-installation
cd $HOME/Downloads/linux-installation

# Additional repositories
## Numix incon theme circle PPA
sudo add-apt-repository -y ppa:numix/ppa

## Visual Studio Code repository
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get install apt-transport-https

## Google Chrome repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

## Brave Browser repository
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

## Insomnia
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -

## Ulauncher
sudo add-apt-repository -y ppa:agornostal/ulauncher

## GH
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages


# Updating repositories and upgrading packages
sudo apt-get update
sudo apt-get upgrade -y

# Installing packages

# NVM
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts

# Yarn
sudo apt-get install --no-install-recommends yarn -y

## apt-get packages
sudo apt-get install -y git \
                        plank \
                        ulauncher \
                        numix-icon-theme-circle \
                        insomnia \
                        zsh \
                        texlive-full \
                        htop \
                        psensor \
                        putty \
                        code \
                        brave-browser \
                        google-chrome-stable \
                        geany \
                        steam \
                        virtualbox \
                        piper \
                        gh \
                        python3-pip

## flatpak packages
flatpak install flathub com.discordapp.Discord \
                        com.spotify.Client \
                        org.videolan.VLC \
                        com.slack.Slack \
                        us.zoom.Zoom \
                        com.obsproject.Studio \
                        cc.arduino.arduinoide -y

## Python3 packages
python3 -m pip install scons


## Nordic theme :purple_heart:
THEMES="$HOME/.themes/"
if [ -d "$THEMES" ]; then
    git clone https://github.com/EliverLara/Nordic.git $HOME/.themes/Nordic
else
    mkdir $HOME/.themes/
    git clone https://github.com/EliverLara/Nordic.git $HOME/.themes/Nordic
fi

## Oh My zsh! Framework
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## SpaceShip theme for Oh My Zsh!
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
