# Linux on Chromebook
**This file explains how to install Linux on a Chromebook using Google's chrostini. It also describes software that I use on my on Linuxbooks that may or may not be FOSS. Also, make sure that you have at least 5gigs left over on your drive. A default installation takes around three GB of hard drive, and you'll want to install apps on top of the basic installation.**
## To install chrostini
1. Open Chrome OS settings by clicking on the settings gear in the status area, where your profile icon is.
2. Once Settings opens up, click on Advanced and select the Developers section. The lone option there is "Turn on". Click that button.
3. When you do that, a diolog will appear. Select "Next".
4. The first screen asks you to pick a username and allocate a certain amount of hard drive space. **Do note that there is not a direct way to change this username, so choose wisely!**
5. After that screen, it'll display a progress bar while installing Chrostini. Once it disappears, a new app called "Terminal" will appear in a folder named "Linux Apps" on your Everything Menu. You are all set!
## But... How do I use it? No other apps were installed!
Right, there were no other apps installed. You have to install them using `apt`.
`apt` is a command based package manager, so to use it, open the Terminal app from the Everything Menu. The basic form of `apt` is such:
`sudo apt install [package-name]`
Type your password and
Now, there's a weird thing about `apt`. It won't know what you mean by, say, Chrome. To install Chrome, you'd have to type:
`sudo apt install chrome-browser`
But when you do that, it just displays this:
```
Reading package lists...Done
Building dependency tree
Reading state information... Done
E: Could not find package chrome-browser
```
Welp. Chrome's not included with the *FOSS* listing that Ubuntu comes with. So, you could go to [Chrome's download site](google.com/chrome) and download a .DEB file and then use `apt`'s father, `dpkg`. Here's the basic form of `dpkg`:
```
sudo dpkg -i [package-name]
```
Okay, now take a deep breath..... almost done. To *run* a program, just type its name. For Chrome, do this:
```
chrome-browser
```
Seems complex, right. Yeah, thought so. In this repo, I have included a shell file that'll give you Chrome, Spotify and other apps I use on my Linux books. 
