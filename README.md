# Dotfiles

![Screenshot of my desktop](https://github.com/joaquimbrugues/dotfiles/raw/master/screenshots/scrot-19-03-2020.png)

These are the dotfiles for my various GNU/Linux installations both at home and at work. I use this repository for convenience in order to quickly set up a new system in the event of a reinstall/distro hop, and to sync easily the configurations. Feel free to read and use them for your own installations!

## What do I use

The configurations are set for the programs that I use more often:

- [bspwm](https://github.com/baskerville/bspwm) (window manager)
- [lemonbar-xft](https://github.com/freundTech/bar) (status bar)
- [neovim](https://neovim.io) (text editor)
- [st](https://st.suckless.org) (terminal emulator)
- [bash](https://www.gnu.org/software/bash/)
- [sxhkd](https://github.com/baskerville/sxhkd) (hotkey daemon)
- [moc](https://moc.daper.net/) (music daemon)
- [joshuto](https://github.com/kamiyaa/joshuto) (file manager)
- [i3](https://i3wm.org/) (window manager): not actively maintained
- [Xfce terminal](https://docs.xfce.org/apps/terminal/start) (terminal emulator): not actively maintained
- [nano](https://www.nano-editor.org/) (text editor): not actively maintained
- urxvt (terminal emulator): not actively maintained
- [transmission-remote-tui](https://github.com/murtaza-u/transmission-remote-tui) (transmission-daemon tui) 

There are also scripts (in `~/.local/bin/`) with some useful tools, usually using [dmenu](https://tools.suckless.org/dmenu/) to interact with the system, to work with LaTeX, and for my status bar, among other applications.

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
Set the flag `showUntrackedFiles` to `no` for this repository, so that `dotgit status` shows only changes to the already tracked files:

```
dotgit config --local status.showUntrackedFiles no
```

Check out the actual content from the repository to your `$HOME` directory:

```
dotgit checkout
```

This might fail, because you are attempting to modify some files already existing in your directory. In this case, just remove or back up the offending files, and run again the last command.

After this, you should be set! You can modify the configurations to your liking.

## Window managers

Bspwm is now my main window manager, with lemonbar as the status bar. The configuration in this repository should still work for i3, though, and some of it might be useful with other WM. Even if I don't actively maintain my i3 config, it's still available and it should work just fine.

## License

The files and scripts in this repository are licensed under the MIT License. It allows you to use, modify, copy, distribute, sell, give away, etc. the software. In other words, do what you want with it.
