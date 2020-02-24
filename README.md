# Dotfiles

These are the dotfiles for my various GNU/Linux machines both at home and at work. I use this repository for my comodity in order to quickly set up a new sistem in the event of a reinstall/distro hop. Feel free to read and use them to your own convenience!

## What do I use

The configurations are set for the programs that I use often:

	- i3 (window manager)
	- nano (text editor)
	- urxvt (terminal emulator)
	- Xfce terminal (terminal emulator)
	- bash
	- sxhkd (hotkey daemon)

There are also scripts (in `~/.local/bin/`) with some useful tools, usually using dmenu, to interact with the system, to work with LaTeX, and for my i3 status bar.

This list of programs may change with time.

## How to use these dotfiles

If you want to use my dotfiles (or a fork of them) in your installation, there is a nice solution to do this (credit to https://www.atlassian.com/git/tutorials/dotfiles, where I learned how to do this).

First of all, open your favourite terminal and clone this repository:

```
git clone --bare https://github.com/joaquimbrugues/dotfiles.git $HOME/.dotfiles
```

Create an alias for the current shell scope (this alias is also defined in `.bashrc`, so you won't need to repeat this step after the installation is finished):

```
alias dotgit='/usr/bin/git --gir-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
Set the flag `showUntrackedFiles`to `no` for this repository, so that `dotgit status` shows only changes to the already tracked files:

```
dotgit config --local status.showUntrackedFiles no
```

Checkout the actual content from the repository to your `$HOME` directory:

```
dotgit checkout
```

This might fail, because you are attempting to modify some files already existing in your directory. In this case, just remove or backup the offending files, and run again the last command.

After this, you should be set!

## Work in progress

I am working to integrate bspwm as my main window manager, with lemonbar as the status bar. This does not mean that I will remove my i3 configuration, it will still be there, I will just not update it more.

## License

The files and scripts in this repository are licensed under the MIT License. It allows you to use, modify, copy, distribute, sell, give away, etc. the software. In other words, do what you want with it.
