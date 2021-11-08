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
`apt install [package-name]`
Now, there's a weird thing about `apt`&emdash; it won't know what you mean by, say, Chrome. To install Firefox:
