```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░

  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about  ▓ custom linux config files
 ░▓ author ▓ egoreast <i@egoreast.ru>
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░

```

Based on: <https://github.com/xero/dotfiles>

## table of contents

- [managing](#managing)
- [installing](#installing)
- [how it works](#how-it-works)
- [tl;dr](#tldr)
- [license](#license)

# managing

i manage mine with [gnu stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. this allows me to keep a versioned directory of all my config files that are virtually linked into place via a single command. this makes sharing these files among many users (root) and computers super simple. and does not clutter your home directory with version control files.

# installing

stow is available for all linux and most other unix like distributions via your package manager.

- `apt install stow`
- `brew install stow`
- `dnf install stow`
- `pacman -S stow`
- `yum install stow`

or clone it [from source](https://savannah.gnu.org/git/?group=stow) and [build it](http://git.savannah.gnu.org/cgit/stow.git/tree/INSTALL) yourself.

# how it works

by default the stow command will create symlinks for files in the parent directory of where you execute the command. since i keep my dots in: `~/.local/src/dotfiles` and all stow commands should be executed in that directory and suffixed with `-t ~` to target the home directory. otherwise they will end up in `~/.local/`. if you wanna make things easier on yourself you can clone the repo to `~/dotfiles` then run commands with no flags. but who likes things easy in the unix world ;P

to install configs execute the stow command with the folder name as the first argument, then target your home directory (or wherever you like).

to install my **zsh** configs use the command:

`stow zsh -t ~`
this will symlink files like `.zshrc` to `~/.config/zsh`

to install the **fun scripts** to `/usr/local/bin` execute the command:

`stow fun -t /usr/local/`

this will symlink the fun scripts like `food` to `/usr/local/bin`. notice that the location of the scripts has appended a bin folder? that's b/c stow creates or uses the exact folder structure of the repo. and the food script is located at `/fun/bin/food` in this repo.

**note:** stow can only create a symlink if a config file does not already exist. if a default file was created upon program installation you must delete it first before you can install a new one with stow. this does not apply to directories, only files.

more notes on using/understanding stow in [this github issue](https://github.com/xero/dotfiles/issues/14).

# my dotfiles setup

to fully "install" and setup this repo run the [setup script](https://github.com/xero/dotfiles/blob/main/setup) or something like this:

```
# clone and stow
git clone git@github.com:EgorEast/dotfiles.git ~/.local/src/dotfiles &&
 cd ~/.local/src/dotfiles &&
 stow anydesk autostart bash bottom calcurse cmus curl delta dunst fastfetch fish gemini git glow greenclip gtk-3.0 gtk-4.0 gtkrc-2.0 htop i3 icons inputrc kitty lazygit mineapp-list mpv nano nekoray neovim nvim.astro nvim.nvchad nwg-look obs onlyoffice pavucontrol picom pipewire rofi rudesktop spectacle ssh thunar user-dirs vim wget xfce-4 xinit xorg xsettingsd ya-disk ya-music yazi yt-dlp -t ~

# nvim
mkdir ~/.local/nvim &&
  git clone --filter=blob:none --single-branch https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy
nvim --headless "+Lazy! sync" +qa
nvim --headless "+MasonUpdate" +qa

# creating ~src and ~dotfiles aliases"
sudo useradd -g src -d ~/.local/src src
sudo useradd -d ~/.local/src/dotfiles dotfiles
```

# tl;dr

navigate to your home directory

`cd ~`

clone the repo:

`git clone git@github.com:EgorEast/dotfiles.git`

enter the dotfiles directory

`cd dotfiles`

install the fish settings

`stow fish`

install fish settings for the root user

`sudo stow fish -t /root`

uninstall fish

`stow -D fish`

etc, etc, etc...
