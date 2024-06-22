#!/bin/bash
#set -x
chmod +x "$0"
#
#
#todo
#迁移到服务器
#换键盘布局
#
#
install-git() {
	git config --global user.email "k511153362@gmail.com"
	git config --global user.name "kevin010717"
	gh auth login
	gh repo clone kevin010717/ubuntu-install
}
install-lua-language-server() {
	sudo apt-get install lua5.3 liblua5.3-dev
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
	(
		echo
		echo 'eval "$(/home/linuxbrew/.linuxbre  w/bin/brew shellenv)"'
	) >>/home/kevin/.zshrc
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew she llenv)"
	brew install lua-language-server
}

install-aider() {
	git clone https://github.com/paul-gauthier/aider.git .aider
	cd .aider
	python3 -m venv venv
	pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
	./venv/bin/python3 -m pip install aider-chat
	export OPENAI_API_KEY=sk-wlm6Xs71oEJ379JE1027B83bEeFa4dF493Dc82Cb4e7dB170
	export OPENAI_API_BASE="https://apikeyplus.com"
	source venv/bin/activate
	aider
}

install-chatGPT-shell-cli() {
	curl -sS https://raw.githubusercontent.com/0xacx/chatGPT-shell-cli/main/install.sh | sudo -E zsh
	export OPENAI_KEY=sk-pfQvDlLpDDVSlj1I618e034d18Fc4bBd866392F612F3Bb8f
	chatgpt
}

install-ebr() {
	git clone https://github.com/wustho/epr.git .erp
	cd .epr
	python3 -m venv venv
	./venv/bin/python3 -m pip install epr-reader
	#./venv/bin/python3 epr.py  file.epub
}

install-bk() {
	cargo install bk
}

install-zeretier-one() {
	curl -s https://install.zerotier.com | sudo bash
	sudo systemctl start zerotier-one
	sudo chmod a+w /usr/lib/systemd/system/zerotier-one.service
	sudo sed -i '/^After.*/s/$/ shellcrash.service/' /usr/lib/systemd/system/zerotier-one.service
	sudo systemctl daemon-reload
	sudo zerotier-cli join 8056c2e21c28950a
}

install-gitbook() {
	curl -fsSL https://bun.sh/install | bash
	source .zshrc
	git clone https://github.com/gitbookIO/gitbook.git .gitbook
	cd .gitbook
	bun install
	bun dev
}

install-docker() {
	sudo apt-get install docker.io
	sudo systemctl start docker
	sudo systemctl enable docker
	sudo echo '{
"registry-mirrors": [
"https://2h3poj2z.mirror.aliyuncs.com"
]
}' >/etc/docker/daemon.jason
	sudo docker run hello-world
	sudo curl -L "https://github.com/docker/compose/releases/download/v2.27.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	docker-compose --version
}

install-calibre-web() {
	mkdir $HOME/calibre-web
	mkdir $HOME/calibre-web/books/
	mkdir $HOME/calibre-web/config/
	sudo chmod 777 -R $HOME/calibre-web/
	sudo docker run -d \
		--name=calibre-web \
		-e PUID=1000 \
		-e PGID=1000 \
		-e TZ=Etc/UTC \
		-e DOCKER_MODS=linuxserver/mods:universal-calibre `#optional` \
		-e OAUTHLIB_RELAX_TOKEN_SCOPE=1 `#optional` \
		-p 8083:8083 \
		-v $HOME/calibre-web/config:/config \
		-v $HOME/calibre-web/books:/books \
		--restart unless-stopped \
		linuxserver/calibre-web:latest
}

install-chatgpt-next-web() {
	sudo docker pull yidadaa/chatgpt-next-web
	sudo docker run -d -p 3000:3000 \
		-e OPENAI_API_KEY=sk-pfQvDlLpDDVSlj1I618e034d18Fc4bBd866392F612F3Bb8f \
		-e CODE=6666 \
		-e BASE_URL=https://oneapi.xty.app \
		--restart always \
		yidadaa/chatgpt-next-web
}

install-ubuntu-setup() {
	#合盖不休眠
	sudo sed -i 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/' /etc/systemd/logind.conf
	sudo sed -i 's/#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf
	sudo systemctl restart systemd-logind.service
	#sudo 无密码
	echo '%kevin     ALL=(ALL) NOPASSWD: ALL' | sudo tee -a /etc/sudoers
	#google-chrome
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
	google-chrome
}

install-alacritty() {
	sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
	sudo apt install alacritty
}

install-zsh-lazyvim() {
	sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
	sudo usermod -s /usr/bin/zsh ${whoami}
	mkdir .nerd-fonts && cd .nerd-fonts
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/0xProto.zip
	unzip *.zip
	sudo cp 0xProtoNerdFont-Regular.ttf /usr/share/fonts
	cd ../ && rm -rf .nerd-fonts
	fc-cache -fv
	#todo 字体切换
	#git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
	git clone https://github.com/LazyVim/starter ~/.config/nvim && nvim
}

install-shellcrash() {
	bash -c "$(curl -kfsSl --resolve raw.githubusercontent.com:443:199.232.68.133 https://raw.githubusercontent.com/juewuy/ShellClash/master/install.sh)" && source /etc/profile &>/dev/null
	#https://sub.chasing.sbs:21600/api/v1/client/subscribe?token=52510b4697e5d0a7c108af210cd2834a
	#https://abc.xhonor.top:9066/v2b/qz/api/v1/client/subscribe?token=a1cbd3ce604abc59ef349b53bb596654
}

install-update() {
	sudo mv /etc/apt/sources.list.d/ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources.bak
	echo "
Enabled: yes
Types: deb
URIs: http://mirrors.tuna.tsinghua.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
Enabled: yes
Types: deb
URIs: http://mirrors.ustc.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
Enabled: yes
Types: deb
URIs: http://mirrors.aliyun.com/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg" >>/etc/apt/sources.list.d/ubuntu.sources
	sudo apt update
	sudo apt install curl neovim git gh zsh net-tools tmux openssh-server build-essential npm fzf ytfzf ranger rtv cargo -y
}

install() {
	while true; do
		echo -e "${GREEN_COLOR}1.install-shellcrash${RES}"
		echo -e "${GREEN_COLOR}2.install-update${RES}"
		echo -e "${GREEN_COLOR}3.install-zsh-lazyvim${RES}"
		echo -e "${GREEN_COLOR}4.install-alacritty${RES}"
		echo -e "${GREEN_COLOR}5.install-ubuntu-setup${RES}"
		echo -e "${GREEN_COLOR}6.install-chatgpt-next-web${RES}"
		echo -e "${GREEN_COLOR}7.install-calibre-web${RES}"
		echo -e "${GREEN_COLOR}8.install-docker${RES}"
		echo -e "${GREEN_COLOR}9.install-gitbook${RES}"
		echo -e "${GREEN_COLOR}10.install-zeretier-one${RES}"
		echo -e "${GREEN_COLOR}11.install-git${RES}"
		read choice
		case $choice in
		1) install-shellcrash ;;
		2) install-update ;;
		3) install-zsh-lazyvim ;;
		4) install-alacritty ;;
		5) install-ubuntu-setup ;;
		6) install-chatgpt-next-web ;;
		7) install-calibre-web ;;
		8) install-docker ;;
		9) install-gitbook ;;
		10) install-zeretier-one ;;
		11) install-git ;;
		*) break ;;
		esac
	done
}

start() {
	while true; do
		echo -e "${GREEN_COLOR}1.clouddrive2${RES}"
		read choice
		case $choice in
		1) ;;
		*) break ;;
		esac
	done
}

fun() {
	while true; do
		echo -e "${GREEN_COLOR}1.cmatrix${RES}"
		read choice
		case $choice in
		1) ;;
		*) break ;;
		esac
	done
}

RED_COLOR='\e[1;31m'
GREEN_COLOR='\e[1;32m'
YELLOW_COLOR='\e[1;33m'
BLUE_COLOR='\e[1;34m'
PINK_COLOR='\e[1;35m'
SHAN='\e[1;33;5m'
RES='\e[0m'

while true; do
	echo -e "${GREEN_COLOR}1.install${RES}"
	echo -e "${GREEN_COLOR}2.start${RES}"
	echo -e "${GREEN_COLOR}3.get some fun${RES}"
	read choice
	case $choice in
	1) install ;;
	2) start ;;
	3) fun ;;
	*) break ;;
	esac
done
