# nano— a command line text editor
sudo apt install nano
# Pale Moon— a Mozilla Firefox clone that works beautifully
#Do note that Pale Moon, for some reason, doesn't create a Everything Launcher icon, so I do that manually 
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_18.04/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_18.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null
sudo apt update
sudo apt install palemoon
touch /usr/share/applications/palemoon.desktop
# Artha— a dictionary and thesaurus app
sudo apt install artha
#Kate— a graphical text editor
sudo apt install Kate
