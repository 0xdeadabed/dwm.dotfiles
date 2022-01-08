## A collection of my dwm dotfiles.

#### Hello friends, since I'm studying C programming language at [42Lausanne](https://www.42lausanne.ch/), I decided to switch my desktop manager from i3 to dwm, for some reasons but especially because it's written in C and I can laern even more. So I decided to write my notes in the form of tutorial and walkthrough.

`Please note that these notes and dwm in general are aimed for more advanced users, especially you need some basic C theories to fully understand what I'm going to be talking about. Fore begginer users who wish to have a tiling windows manager, it's preferable to use windows managers like i3 for which I'll later create another repository where I'm going to be sharing my notes about it.`

#### The idea
This repository, tutorial or whatever you call, is aimed to introduce Linux and open source in general even tho the name is dwm but I would try to explain in more detail concepts, and try to respond the question of `Why the hell Linux and not winvirus`. And unlike other tutorials that you likely find on youtube I won't only talk about Linux in the term of server or enterprise, but rather in the perspective of users. I've been using Linux since 2015 for my everyday life and it really does have any utility that anyone would ever need. And yes `I'm even playing video games on it`, big deal right?.
This tutorial would be including exciting and fancy things you can do with Linux as a user not a sys admin.

#### So why dwm? What is even that windows manager thing? A brief story.
Unlike othre OS, GNU/Linux is the richest OS in the term of utilities and its thanks to its generous community and nice peoples around all the world who thanklessfully collaborate and put pieces together. It does have so many utilities and distros that users are often overwhelmed about what to chose! But good news for you, distros like [ArchLinux](https://archlinux.org/), [gentoo](https://www.gentoo.org/), etc... are here for you.
I won't go too much on detail about this but know that Linux is just a kernel that gives you freedom to how use it and what kind of software you want to install on it. You will better understand the concept of freedom in Linux, especially when you install some distros like ArchLinux that gives you the minimum utilities that you need (Yes only a black screen with a simple terminal, the rest you should configure and install as you wish).
It is great because it makes you truly see the big picture of Linux and free/opensource softwares, the [Installation Guide](https://wiki.archlinux.org/title/Installation_guide) and the arch wiki in general has everything you need.

#### Windows Managers
Well, now we have learned some basic things, a [Window manager](https://wiki.archlinux.org/title/window_manager) is what you see on you screen, there are [different types of windows managers](https://wiki.archlinux.org/title/window_manager#Types), you can read more about them in case of curiosity. Here we will be talking about [dwm](https://dwm.suckless.org/) which is a [dynamic window manager](https://en.wikipedia.org/wiki/Dynamic_window_manager).

#### dwm
dwm is a dynamic windows manager a [suckless](https://dwm.suckless.org/) utility, it is minimal, you don't have too much unless widget unless you install them.

#### Install dwm
As I have already menstioned dwn is written in C, therefore it has somehow to be compiled, and good news it is explained in the [installation guide](https://github.com/0xb1n4r/dwm.dotfiles/tree/main/dwm#readme), you have just to follow it in order to install dwm correctly.

#### Run dwm
After installing dwm one has to somehow run and log in to it, there are multiple ways of doing such a task, you could probably run it as a normal program, but I don't think that would be a good idea, you may want to log in to dwm directly after booting process. you can use [xinit](https://wiki.archlinux.org/title/Xinit) or some kind of [display manager](https://wiki.archlinux.org/title/Display_manager).

In the installation guide, it is already explained how to run dwm through xinit, but if you are using annother display manager as I do, you should how to find out how to add dwm to it, the wiki of archlinux is great of these kind of informations. 

For my caae as I use lightdm, you have to create a file in /usr/share/xsessions/ called dwm.desktop and put [this](https://github.com/0xb1n4r/dwm.dotfiles/blob/main/dwm.desktop) into it.lightdm will then check it out and add it to the list.

#### Updates will come contiously.
