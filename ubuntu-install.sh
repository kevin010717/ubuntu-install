#!/bin/bash
#markdown-preview.nvm
#chatgpt aider
#ebook-terminal bk 
#迁移到服务器
sudo passwd root
sudo passwd -u root
sudo -i
sudo apt update
sudo apt install curl neovim git gh zsh net-tools tmux openssh-server build-essential npm -y
sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
sudo usermod -s /usr/bin/zsh ${whoami}
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/0xProto.zip
unzip *.zip
rm -rf *.zip
sudo cp 0xProtoNerdFont-Regular.ttf /usr/share/fonts
fc-cache -fv
#todo : 字体切换
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
google-chrome

bash -c "$(curl -kfsSl --resolve raw.githubusercontent.com:443:199.232.68.133 https://raw.githubusercontent.com/juewuy/ShellClash/master/install.sh)" && source /etc/profile &> /dev/null

curl -s https://install.zerotier.com | sudo bash
sudo systemctl start zerotier-one
sudo chmod a+w /usr/lib/systemd/system/zerotier-one.service
sudo sed -i '/^After.*/s/$/ shellcrash.service/' /usr/lib/systemd/system/zerotier-one.service
sudo systemctl daemon-reload
sudo zerotier-cli join 8056c2e21c28950a

sudo apt install python3-pip python3-venv
git clone https://github.com/janeczku/calibre-web.git .calibre-web
cd .calibre-web
python3 -m venv venv
./venv/bin/python3 -m pip install -r requirements.txt
nohup ./venv/bin/python3 cps.py

curl -fsSL https://bun.sh/install | bash
source .zshrc
git clone https://github.com/gitbookIO/gitbook.git .gitbook
cd .gitbook
bun install
bun dev

sudo apt-get install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo docker run hello-world
sudo curl -L "https://github.com/docker/compose/releases/download/v2.27.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

sudo sed -i 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/' /etc/systemd/logind.conf
sudo sed -i 's/#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf
sudo systemctl restart systemd-logind.service

sudo docker pull yidadaa/chatgpt-next-web
sudo docker run -d -p 3000:3000 \
   -e OPENAI_API_KEY=sk-pfQvDlLpDDVSlj1I618e034d18Fc4bBd866392F612F3Bb8f \
   -e CODE=6666 \
   -e BASE_URL=https://oneapi.xty.app \
   yidadaa/chatgpt-next-web

git clone https://github.com/paul-gauthier/aider.git .aider
cd .aider
python3 -m venv venv
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
./venv/bin/python3 -m pip install aider-chat
export OPENAI_API_KEY=sk-pfQvDlLpDDVSlj1I618e034d18Fc4bBd866392F612F3Bb8f
export OPENAI_API_BASE="https://api.xty.app/v1"
source venv/bin/activate
aider

git clone https://github.com/wustho/epr.git .erp
cd .epr
python3 -m venv venv
./venv/bin/python3 -m pip install epr-reader
#./venv/bin/python3 epr.py  file.epub

sudo apt install cargo
cargo install bk
#command not found
