# #! /bin/zsh

# update apt & snap
apt install --fix-broken -y
apt autoremove -y
apt update
apt upgrade -y
snap refresh

# install cURL
apt install curl -y

cd ~/$user
if [ -d  'Área de Trabalho' ]:
then
	cd Área\ de\ Trabalho/
else
	cd Desktop/
fi

if [ -d  'helper' ]:
then
	rm -rf helper
fi

mkdir helper && cd helper

#get and install chrome
curl -o google.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google.deb 

#install dev-tools

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

curl -o gitKraken.deb https://release.axocdn.com/linux/gitkraken-amd64.deb
dpkg -i gitKraken.deb

curl -o sublimeMerge.deb https://download.sublimetext.com/sublime-merge_build-1116_amd64.deb
dpkg -i sublimeMerge.deb

 apt-get remove docker docker-engine docker.io containerd runc
 apt-get update
 apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -
 add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

 curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 chmod +x /usr/local/bin/docker-compose
 ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
docker-compose version 1.24.1, build 1110ad01

apt install nginx composer php7.2 php7.2-zip php7.2-xml php7.2-pgsql postgresql pgadmin tilix git mercurial chrome-gnome-shell gnome-tweaks -y -f

curl -o vstudio.deb https://www.valentina-db.com/en/all-downloads/vstudio/current/vstudio_win_64?format=raw
dpkg -i vstudio.deb

curl -o sqlectron.deb https://github-production-release-asset-2e65be.s3.amazonaws.com/41959825/1d5e1480-b113-11e8-8aa4-8d23ced2a580?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20190818%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20190818T133803Z&X-Amz-Expires=300&X-Amz-Signature=26eff4b26ffb902f1a8e4400c5030d182c2f53881197bf2a44e66df0ee14f730&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=attachment%3B%20filename%3DSqlectron_1.30.0_amd64.deb&response-content-type=application%2Foctet-stream
dpkg -i sqlectron

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

apt-get install insomnia -y

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt-get install nodejs

npm install -g @vue/cli

#utilities
apt install blender krita gimp inkscape -y -f
curl -o whats.deb https://www.thefanclub.co.za/sites/default/files/public/downloads/whatsapp-webapp_1.0_all.deb
dpkg -i whats.deb
snap install discord
 add-apt-repository universe
 sh -c "echo 'deb http://download.opensuse.org/repositories/home:/ColinDuquesnoy/xUbuntu_19.04/ /' > /etc/apt/sources.list.d/mellowplayer.list"
wget -nv https://download.opensuse.org/repositories/home:ColinDuquesnoy/xUbuntu_19.04/Release.key -O Release.key
 apt-key add - < Release.key
 apt update
 apt install mellowplayer -y -f


####FINISH####
cd .. && rm -rf helper
