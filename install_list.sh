sudo add-apt-repository -y ppa:linuxgndu/sqlitebrowser
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo add-apt-repository -y "deb https://cli-assets.heroku.com/branches/stable/apt ./"
wget -q -O - https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget -q -O - https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -
wget -q -O - https://repo.steampowered.com/steam/archive/precise/steam.gpg | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://repo.steampowered.com/steam/ precise steam" > /etc/apt/sources.list.d/steam.list'
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

sudo apt-get update

sudo apt-get install -y \
sloccount \
xclip \
network-manager-openconnect-gnome \
dconf-editor \
gitk \
tig \
htop \
gimp \
inkscape \
google-chrome-stable \
curl \
vim \
g++ \
gparted \
vlc \
liferea \
links \
sqlitebrowser \
unetbootin \
iotop \
usb-creator-gtk \
signal-desktop

curl -NL https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y heroku

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

wget -qO- https://get.docker.com/ | sudo sh

sudo usermod -aG docker $USER

exit #end of automated installs. Things below here must be installed manually

ctrl+alt+t open terminal

#does pip need root?
pip install virtualenv
pip install virtualenvwrapper

non-apt
---------
https://adoptopenjdk.net/installation.html#linux-pkg
android-studio
atom/vscode

chrome addons
-------
ublock origin
https everywhere
rescroller
postman
reddit enhancement suite
https://developer.chrome.com/apps/app_usb#caveats
facebook container
chrome://flags/#omnibox-context-menu-show-full-urls
shortcuts like javascript:(()=>{Array.from(document.querySelectorAll('video'),v=>{v.playbackRate=v.playbackRate+0.25;console.log(v.playbackRate)})})();

fun/optional
-------------
mupen64plus
virtualbox - deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian <mydist> contrib # where mydist is xenial etc
steam

windows
------------
disable-start-menu-search.reg

