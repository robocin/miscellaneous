RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

cd /home/$USER/Downloads

ls /home/$USER/Arduino
if [ $? != 0 ]; then
	while true; do
		echo "${YELLOW}You should download the Arduino IDE installer, version 1.8.1, from \"https://www.arduino.cc/en/Main/Software\"${NC}"

		echo -n "When you download the software, type \"done\", followed by [ENTER]... "
		read input

		if [ "$input" = "done" ]; then
			tar xf arduino-1.8.1-linux64.tar.xz
			if [ "$?" != "0" ]; then
				echo "${RED}[Error] You don't have a file named \"arduino-1.8.1-linux64.tar.xz\"!${NC}"
				exit 1
			fi
			cd arduino-1.8.1
			sudo ./install.sh
			break
		else
			echo "${RED}Spell correctly...${NC}"
		fi
	done
else
	echo "${GREEN}Seems like you already have Arduino installed. Skipting that installation...${NC}"
fi

exit 0
