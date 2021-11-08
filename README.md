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
```
sudo apt install [package-name]
```

Type your password and, *et voila*! You get a shiny new app.
However, there's a weird thing about `apt`. It won't know what you mean by, say, "Chrome". To install Chrome, you'd have to type:
```
sudo apt install chrome-browser
```
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
Seems complex, right. Yeah, thought so. In this repo, I have included a shell file that'll give you apps I use on my Linux books. Also, if you want others, then you're in luck— there's on for each too, `apt` and `dpkg`. 
## Wait! I don't want these!
Well, okay.
Uninstall using:
```
apt uninstall [package-name]
```
or
```
apt purge [package-name]
```
As always, if it's a bit complex, then, okay, got you. A deleter script was added as well.
# I haz error
Oh, no. ``That's an issue.`` Look for your issue here, and if it's not .
## I get an error when running one of the installation scripts.
If install.sh returns the same error that you got when running a basic `apt` command, then try this:
```
apt search [what you are trying to find]
```
Then try again with any name you see here that might match what you are finding.
If else, submit an issue here on Github, pasting the output from `apt` (use Ctrl-Shift-C to copy).
## The program won't run
Hmmmmmmm..... perhaps that's a good thing to ask a subreddit dedicated to that app. They'll be the best to fix it, and this varies quite on the program. One thing to keep in mind is that sometimes apps are built a specific way, meaning that the apps are 
## These apps are slooooow with 10 o's
Okay, here's a few things to try:
1. **Check your status area.** If a "1" (or 2, or 3, or *n*) is sitting  there, open your status area. If you see a "hard drive critically low" notification, clean some crud off your hard drive. Chrostini is, after all, a hard drive-guzzling app, and it needs some breathing room.
2. **Disable hardware acceleration usage on your app.** If you are struggling to open one app, but most others open OK, it could be beacuse *hardware acceleration* is bickering with your app. Ask an subreddit for your app what potential solutions to this issue are.
3. **Try updating your Chromebook.** Sometimes, you'll see a up arrow icon in the status area of the Chromebook. But if you don't, do this: Go to Settings>About Chrome OS. Click "Check for Updates". If you have an outdated version of ChrOS, then it'll get to work on downloading and applying that update.
4. **Backup, then reset.** If all else fails, then try backing up any local files you need off of your Chromebook, then [powerwash](https://support.google.com/chromebook/answer/183084?hl=en) it. 
# Licences
This code and README is distributed under the [CC-0](https://creativecommons.org/share-your-work/public-domain/cc0/) licence. I herby declare this to be open to anybody, copiable any way, and no punishment shall arise from such.
Yet, I also must acknowledge that the Pale Moon sourcecode is licenced under [the Mozilla Public Licence, version 2.0](https://www.mozilla.org/en-US/MPL/2.0/). Also, Artha is based upon the [GPL 2.0](http://www.gnu.org/licenses/old-licenses/gpl-2.0.html), and that Kate is based mostly upon LGPLv2 (see [here](https://kate-editor.org/2014/01/03/kate-licensing/) for more details). Breaking said licences is in turn violating KDE and Pale Moon's copyright, which is not cool. Thanks for honoring that!
