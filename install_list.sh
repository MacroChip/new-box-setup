release_name=$(lsb_release -a -u 2>&1 | tr '[:upper:]' '[:lower:]' | grep -E 'codename' | cut -d ':' -f 2 | tr -d '[[:space:]]')

sudo add-apt-repository -y ppa:linuxgndu/sqlitebrowser
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/atom
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo add-apt-repository -y "deb https://cli-assets.heroku.com/branches/stable/apt ./"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $release_name contrib" > /etc/apt/sources.list.d/virtualbox.list'
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://repo.steampowered.com/steam/ precise steam" > /etc/apt/sources.list.d/steam.list'

sudo apt-get update

sudo apt-get install -y \
sloccount \
xclip \
oracle-java8-set-default \
network-manager-openconnect-gnome \
dconf-editor \
git \
gitk \
tig \
htop \
gimp \
inkscape \
atom \
google-chrome-stable \
steam-launcher \
curl \
vim \
gparted \
vlc \
liferea \
links \
sqlitebrowser \
unetbootin \
usb-creator-gtk \
/

curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y heroku

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

wget -qO- https://get.docker.com/ | sh

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

exit #end of automated installs. Things below here must be installed manually

#does pip need root?
pip install virtualenv
pip install virtualenvwrapper

non-apt
---------
android-studio


chrome addons
-------
ublock origin
https everywhere
rescroller
postman
reddit enhancement suite
https://developer.chrome.com/apps/app_usb#caveats


fun/optional
-------------
mupen64plus
virtualbox