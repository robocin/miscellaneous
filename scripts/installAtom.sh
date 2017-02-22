cd /home/$USER/Downloads
wget http://platformio.org/get-started/ide?dl=platformio-atom-linux-x86_64.deb
#echo "Check on the atom website (should open automaticaly) how to enable linter-clang"
#xdg-open https://atom.io/packages/linter-clang
sudo apt-get install -y clang
apm install linter-clang
if [ -f platformio-atom-linux-x86_64.deb ]; then
  rm platformio-atom-linux-x86_64.deb
fi
