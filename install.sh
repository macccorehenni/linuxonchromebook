# install.sh--------------
#By Cameron Reape
#Use it however the fancy strikes
#This uses dpkg as its base. 
#APT users should use installapt.sh
read package 
sudo dpkg -i $package
