#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" END="$(printf '\033[0m\e[0m')"

banner() {
	cat <<- EOF
${BLUE}	
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠊⠤⠖⣲⣶⠤⠭⠷⣼⣶⡦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣊⣥⠔⠚⠉⠀⠀⠀⠀⠀⠀⠀⠁⢀⡉⠱⡦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⢼⡀⠙⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡟⠀⠀⠀⠀⣠⠔⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⢱⠤⡀⠈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠟⠸⠀⠀⣀⡠⠚⠁⠀⠀⠀⠀⣴⡋⠀⠀⠀⡠⣾⠁⠀⢸⠀⠙⡄⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡟⠀⠀⣠⡾⠋⠀⠀⠀⠀⡴⠀⠀⡟⠀⠀⢀⡜⠁⡟⠀⠀⣸⣆⠀⠸⡄⠀⠘⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⢹⠁⡠⢊⠜⠀⠀⠀⠀⢀⠞⠁⣠⣞⡀⠀⣰⠋⠀⡼⠁⠀⠀⣿⠛⡆⠀⢃⠀⠠⠈⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⡔⣱⠃⠀⢰⢁⢾⡆⠀⠀⢀⡴⡁⢀⡴⡟⠀⡠⠛⠙⢂⠞⡀⠀⠀⡸⡿⡆⢡⠀⢸⠀⠐⡀⢾⡄⠀⠀⠀
⠀⠀⠀⠀⠀⢠⢏⣼⠃⡀⠀⣼⡎⢸⣄⣀⠴⢋⣰⡿⠋⢰⠵⠊⠀⢀⣠⣮⡞⠀⠀⣠⠃⣗⠀⢸⠀⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀
⠀⠀⠀⠀⣰⡿⢃⠇⡼⠀⢸⢿⣷⣟⢿⣷⠶⢻⣽⣶⣶⣷⣦⣤⣤⣠⠟⠹⠁⢀⣼⠃⣸⡞⠒⢬⡆⡄⠀⠀⠀⠀⡟⣆⠀
⠀⠀⠀⢠⠏⠀⡜⡴⠁⠀⡏⣼⠟⢹⡿⠳⠖⣿⠇⠘⠓⠚⠛⠯⣍⠻⠴⠧⠚⡹⠃⡠⠋⠀⠀⠀⣿⣇⠀⠀⠀⡄⢣⢹⠀⠀
⠀⠀⣤⡞⠀⡜⡰⠁⣀⠤⢶⠃⡄⢸⣧⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣀⡀⠠⠹⣿⡆⠀⠀⣿⡈⡄⡂⠀⠀⠀⠀⠀
⠀⠀⠀⣇⣼⣴⡷⠊⡠⣶⠃⡰⢁⣿⣿⠓⡄⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢿⣿⡟⢿⣤⡏⠀⡀⠀⢹⡷⣵⡇⠀⠀⠀⠀⠀
⠀⠀⣠⣿⠋⣸⠁⣜⡰⠁⡰⢁⣾⣿⣿⡞⢣⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠊⡽⠁⠀⠇⡆⢸⡇⠹⣧⠀⠀⠀⠀⠀
⠀⣰⠿⣷⣰⡇⠀⠿⠀⣴⠁⣜⣼⣿⣿⣿⡄⠙⣦⡀⠀⠀⣿⣷⣶⣶⣤⣠⡀⠀⠀⠀⠀⠀⢀⡾⣡⠀⡼⣰⡁⢸⠃⠀⠀⠁⠀⠀⠀⠀
⡜⠁⠀⣹⡟⠀⠀⣀⡀⠀⠀⢿⣟⣿⣿⣿⣿⣄⠙⢷⠄⠀⢡⠀⠙⠛⢿⣿⠟⠀⠀⠀⠀⢰⣿⠟⡇⢰⣷⡿⣷⢸
⠀⢀⡜⣹⠁⠀⠀⢘⠈⠑⠒⣾⣿⠿⠋⣩⣿⣿⢷⣄⠀⠀⠀⠁⠀⠠⠔⠋⠀⠀⠀⠀⣰⣿⠇⢠⣷⠟⠛⢳⣿⠸⡁⠀⠀⠀⠀⠀⠀⠀
⣄⡟⢰⠏⠀⠀⠀⠈⠀⠀⠀⠈⣁⣴⣾⣿⣿⣿⠀⠙⢿⣦⣄⠀⠀⠀⠀⠀⣀⣠⣴⣿⣿⣿⢠⠃⠘⠀⠀⠀⢸⠀⡇⠀⠀
⠈⠛⡿⠀⠀⠀⣤⡀⣀⣀⣠⡞⠁⢻⣿⣿⣿⡟⠀⠀⠀⠙⢿⣿⣶⣴⡶⣿⠋⠉⠉⡳⣝⡼⢾⡀⠀⠀⠀⠀⣼⠴⠿⠿⠿⠥⢄⠀⠀⠀
⠀⢰⠇⠀⠀⠀⠀⣹⣯⠀⢸⡇⠀⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⢹⣠⠔⠉⠀⠈⢧⠀⢣⣄⡀⡖⠋⠀⠀⠸⡀⠰⡀⠀⢣⡀⠀
⠒⣾⣀⢄⡀⠀⠀⣿⣿⣄⠈⢿⠦⢿⣟⢇⣀⡀⠀⠠⠤⠤⠤⠤⠤⠄⠀⠞⠁⠀⠀⠀⠀⠈⠑⠲⠿⣟⣶⡄⠀⠀⠀⢧⢰⠁⠀⠘⡛⢢
⠊⠁⠀⠀⠈⠑⢦⣿⠋⠉⠱⣎⣆⠀⠈⠢⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⣋⠤⠿⣦⡀⠀⠈⡟⠀⠀⠀⠀⡜
⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⠀⢸⣸⠀⠀⠀⠈⢿⡆⣇⣀⣤⠤⠤⠤⠤⠤⢈⣦⣤⠀⠀⠀⣠⠞⣡⠎⠁⠀⠀⠀⠉⠓⠶⡇⠀⠀⠀⡼⠁
⠤⠄⠒⠒⠒⠤⡀⣿⠀⠀⠴⠛⠁⠈⡇⠀⠀⠈⢣⠊⢁⡤⠔⠒⠒⠒⠒⠢⠤⢌⣙⣉⣉⣤⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⣸⣆⡀⣼⠀⠀
⠀⠀⠀⠀⠀⠀⠈⢿⠱⣄⠀⠀⠀⠀⢱⡔⠀⠀⢸⣶⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⠌⠃⠀⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⡝⢻⠀⠀
         ${GREEN}KALI LINUX - XFCE CUSTOMIZATION
       ${GREEN}BY:${END} https://github.com/Alcatraz2033
	EOF
}
banner

echo -e "\n[${BLUE}+${END}] ${BLUE}Actualizando Paquetes...${END}\n"
sudo apt update -y && sudo apt upgrade -y 

echo -e "[${BLUE}+${END}] ${BLUE}Instalando Fuentes...${END}\n"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Hack.zip
unzip Hack.zip
mv *.ttf /usr/share/fonts
rm *.md

echo -e "[${BLUE}+${END}] ${BLUE}Instalanto Kitty terminal...${END}\n"
sudo apt install kitty -y
kitty &
sleep 2
pkill kitty
mv kitty.conf ~/.config/kitty

echo -e "[${BLUE}+${END}] ${BLUE}Instalando Power Level 10k...${END}\n"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

echo -e "[${BLUE}+${END}] ${BLUE}Instalando el navegador Brave...${END}\n"
curl -fsS https://dl.brave.com/install.sh | sh

echo -e "[${BLUE}+${END}] ${BLUE}Instalando Iconos Nordic...${END}\n"
git clone https://github.com/alvatip/Nordzy-icon
cd Nordzy-icon/
./install.sh
cd ..

echo -e "[${BLUE}+${END}] ${BLUE}Instalando Tema Nordic...${END}\n"
git clone https://github.com/EliverLara/Nordic.git
sudo mv Nordic /usr/share/themes/
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"

echo -e "[${BLUE}+${END}] ${BLUE}Instalando barra de tareas...${END}\n"
git clone https://github.com/Neeraj029/custom-xfce4-panel.git
cd custom-xfce4-panel
cp everblush/gtk.css ~/.config/gtk-3.0/
killall xfconfd
cp xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
xfce4-panel -r

echo -e "[${BLUE}+${END}] ${BLUE}Descargando Wallpapers...${END}\n"
git clone https://github.com/linuxdotexe/nordic-wallpapers.git
