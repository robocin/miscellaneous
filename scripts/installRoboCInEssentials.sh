RED='\033[1;31m'
GREEN='\033[1;32m'
DARK_GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

cd /home/$USER/Downloads

echo "${YELLOW}Installing Arduino...${NC}"
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
			cd ..
			rm arduino-1.8.1-linux64.tar.xz
			rm arduino-1.8.1 -r
			echo "${GREEN}[DONE] Arduino installed${NC}"
			break
		else
			echo "${RED}Spell correctly...${NC}"
		fi
	done
else
	echo "${DARK_GREEN}Seems like you already have Arduino installed. Skipting that installation...${NC}"
fi




echo "${YELLOW}Installing Atom/Platformio...${NC}"
ls /home/$USER/.platformio
if [ $? != 0 ]; then
	while true; do
		echo "${YELLOW}You should download the PlatformIO installer and open it with Ubuntu Software Center${NC}"
		xdg-open http://platformio.org/get-started/ide?dl=platformio-atom-linux-x86_64.deb

		echo -n "When you install the software, close it and type \"done\", followed by [ENTER]... "
		read input

		if [ "$input" = "done" ]; then
			#echo "Check on the atom website (should open automaticaly) how to enable linter-clang"
			#xdg-open https://atom.io/packages/linter-clang
			sudo apt-get install -y clang
			if [ "$?" != "0" ]; then
				echo "${RED}[Error] You don't have a file named \"arduino-1.8.1-linux64.tar.xz\"!${NC}"
				exit 1
			fi
			apm install linter-clang
			if [ "$?" != "0" ]; then
				echo "${RED}[Error] You don't have a file named \"arduino-1.8.1-linux64.tar.xz\"!${NC}"
				exit 1
			fi

			echo "${GREEN}[DONE] Atom and PlatformIO installed${NC}"
			break
		else
			echo "${RED}Spell correctly...${NC}"
		fi
	done
else
	echo "${DARK_GREEN}Seems like you already have PlatformIO installed. Skipting that installation...${NC}"
fi




echo "${YELLOW}Installing Octave...${NC}"
ls /home/$USER/.octave
if [ $? != 0 ]; then
	#sudo apt-get install -y octave
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install octave${NC}"
		exit 1
	fi

	echo "${GREEN}[DONE] Octave installed${NC}"
else
	echo "${DARK_GREEN}Seems like you already have Octave installed. Skipting that installation...${NC}"
fi




echo "${YELLOW}Installing Qt...${NC}"
ls /home/$USER/.local/share/Qt
if [ $? != 0 ]; then
	sudo apt-get install -y libgl1-mesa-dev
	wget http://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not download Qt Creator${NC}"
		exit 1
	fi

	chmod +x qt-unified-linux-x64-online.run
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not change permission of Qt Creator installer${NC}"
		exit 1
	fi

	echo "${YELLOW}In \"Select components\", deselect \"Qt 5.8\", select \"Qt 5.7\" and under \"Qt 5.7\" deselect \"Android ARMv7\", \"Android x86\" and \"Sources\"${NC}"
	./qt-unified-linux-x64-online.run
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install Qt Creator${NC}"
		exit 1
	fi
	rm qt-unified-linux-x64-online.run

	echo "${GREEN}[DONE] Qt Creator installed${NC}"
else
	echo "${DARK_GREEN}Seems like you already have Qt Creator installed. Skipting that installation...${NC}"
fi



echo "${YELLOW}Installing V-REP...${NC}"
ls V-REP*
if [ $? != 0 ]; then
	wget http://coppeliarobotics.com/files/V-REP_PRO_EDU_V3_3_2_64_Linux.tar.gz
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not download V-REP${NC}"
		exit 1
	fi

	tar xf V-REP_PRO_EDU_V3_3_2_64_Linux.tar.gz
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not download V-REP${NC}"
		exit 1
	fi
	rm V-REP_PRO_EDU_V3_3_2_64_Linux.tar.gz

	echo "${GREEN}[DONE] V-REP downloaded${NC}"
else
	echo "${DARK_GREEN}Seems like you already have V-REP downloaded. Skipting that...${NC}"
fi



echo "${YELLOW}Installing OpenCV...${NC}"
echo -n "OpenCV will download some dependencies and it takes a looooong time. Are you sure you want to install it? [y/n]"
read input

if [ "$input" = "y" ]; then
	sudo apt-get update
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y g++
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y build-essential
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y cmake
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y libgtk2.0-dev
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y pkg-config
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y python-numpy python-dev
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev libjasper-dev
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get install -y libopencv-dev
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi
	sudo apt-get -qq install libopencv-dev build-essential checkinstall cmake pkg-config yasm libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV dependencies${NC}"
		exit 1
	fi


	# download opencv-2.4.11
	echo "${YELLOW} Downloading OpenCV 2.4.11${NC}"
	wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.11/opencv-2.4.11.zip
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not download OpenCV${NC}"
		exit 1
	fi

	unzip opencv-2.4.11.zip
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not unzip OpenCV${NC}"
		exit 1
	fi

	cd opencv-2.4.11
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV - strange error${NC}"
		exit 1
	fi
	mkdir release
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV - strange error${NC}"
		exit 1
	fi
	cd release
	if [ "$?" != "0" ]; then
		echo "${RED}[Error] Could not install OpenCV - strange error${NC}"
		exit 1
	fi

	# compile and install
	echo -n "OpenCV will be compiled from source and it takes a looooong time. Are you ${RED}REALLY${NC} sure you want to install it? [y/n]"
	read input

	if [ "$input" = "y" ]; then
		cmake -G "Unix Makefiles" -D CMAKE_CXX_COMPILER=/usr/bin/g++ CMAKE_C_COMPILER=/usr/bin/gcc -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=OFF -D WITH_OPENGL=ON -D BUILD_FAT_JAVA_LIB=ON -D INSTALL_TO_MANGLED_PATHS=ON -D INSTALL_CREATE_DISTRIB=ON -D INSTALL_TESTS=ON -D ENABLE_FAST_MATH=ON -D WITH_IMAGEIO=ON -D BUILD_SHARED_LIBS=OFF -D WITH_FFMPEG=OFF -D WITH_GSTREAMER=ON ..
		if [ "$?" != "0" ]; then
			echo "${RED}[Error] Could not cmake on OpenCV directory${NC}"
			exit 1
		fi
		make all -j4 # 4 cores
		if [ "$?" != "0" ]; then
			echo "${RED}[Error] Could not run make on OpenCV directory${NC}"
			exit 1
		fi
		sudo make install
		if [ "$?" != "0" ]; then
			echo "${RED}[Error] Could not run \"make install\" on OpenCV directory${NC}"
			exit 1
		fi
		cd ../..
		rm opencv-2.4.11.zip
		rm -r opencv-2.4.11

		echo "${GREEN}[DONE] OpenCV installed${NC}"
	fi
else
	echo "${YELLOW}Smart boy. Skipping installation.${NC}"
fi



exit 0
