sudo apt-get install -y v4l-utils

# Install GStreamer/ffmpeg (Opencv Lib to Video Stream)  
# Adding repository manually to Ubuntu 14.04LTS
sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get install gstreamer0.10-ffmpeg