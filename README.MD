<b>sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get install git && git clone https://github.com/spinuvlad/start.git && cd start && sudo chmod ugo+x start.sh && ./start.sh
</b>


Dupe ce procedura de instalare a luat sfarsit:
**source ~/.bashrc && viplug** pentru a deschide fisierul de pluginuri, iar apoi instaleaza toate pluginurile prin comanda: <b>:PlugInstall</b>

**************************

_Daca doresti sa activezi autocomplete:_ 

cd ~/.config/nvim/autoload/plugged/coc.nvim && sudo npm install -g yarn && sudo yarn install && sudo yarn build

**daca apar erori:**
sudo apt-get purge --auto-remove nodejs && curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt-get install -y nodejs && sudo npm install -g n && sudo yarn install && yarn build

**************************
Pentru fisiere "js":
Executa comanda in fisier *.js: :CocInstall coc-tsserver

Pentru python:
Executa comanda in fisier *.py: :CocInstall coc-python

sudo apt install python3-pip
pip3 install jedi
