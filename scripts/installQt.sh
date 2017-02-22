YELLOW='\033[1;33m'
NC='\033[0m'

cd /home/$USER/Downloads

wget http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
chmod +x qt-unified-linux-x64-online.run
echo "${YELLOW}In \"Select components\", deselect \"Qt 5.8\", select \"Qt 5.7\" and under \"Qt 5.7\" deselect \"Android ARMv7\", \"Android x86\" and \"Sources\"${NC}"
./qt-unified-linux-x64-online.run
