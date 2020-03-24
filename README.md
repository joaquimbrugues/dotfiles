# Dotfiles

![Screenshot of my desktop](https://github.com/joaquimbrugues/dotfiles/raw/master/screenshots/scrot-19-03-2020.png)

These are the dotfiles for my various GNU/Linux machines both at home and at work. I use this repository for my comodity in order to quickly set up a new sistem in the event of a reinstall/distro hop. Feel free to read and use them to your own convenience!

## What do I use

The configurations are set for the programs that I use often:

	- bspwm (window manager)
	- lemonbar (status bar)
	- nano (text editor)
	- urxvt (terminal emulator)
	- bash
	- sxhkd (hotkey daemon)
	- i3 (window manager): not actively mantained
	- Xfce terminal (terminal emulator): not actively mantained

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
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
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

## Window managers

bspwm is now my main window manager, with lemonbar as the status bar. This configuration should still work for i3, though, and some of it might be useful with other WM. Even if I don't actively mantain my i3 config, it's still available and it should work just fine.

## License

The files and scripts in this repository are licensed under the MIT License. It allows you to use, modify, copy, distribute, sell, give away, etc. the software. In other words, do what you want with it.
