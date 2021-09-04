# Abyss dotfiles

These are the dotfiles for my BSPWM rice. 
These files are personally oriented and as such you will have to edit some files if you intend to use them yourself.
Note: if any direcories specified do not exist for you, manually add them.
Note: if you do not use xinit as your startup manager, you may want to look at my .xinitrc and copy some of the startup apps set.
Note: you may also want to install the `gruvbox-material-gtk` and `gruvbox-material-icon` GTK and icon themes.

---

# Install instructions

## Prerequisites
These instructions require the `git` and `stow` packages/programs, and assume you have them installed already.
Because the installation uses `stow`, you **should not delete the repository.** If you need to so you can use these files in your own dotfiles, or for any other reason, there will also be instructions for which files to copy to where in your system. 

Also, before you do anything, obviously clone this repo into your home directory:
```
$ cd ~
$ git clone https://github.com/hall-of-angels/dotfiles.git
```

## BSPWM
### Prerequisites
Before installing my BSPWM dotfiles, you must install the `bspwm` package. If you are using multiple monitors, you may also wish to get the names of your monitors with the `xrandr` package:

```
$ xrandr -q
```

### Installation
**Using stow:** Use `stow` to link the config files for BSPWM:
```
$ cd ~/dotfiles
$ stow -vt $HOME BSPWM
```
**By copying files:** copy every file from `~/dotfiles/BSPWM/.config/bspwm/` to `~/.config/bspwm`.

### Config editing
**`~/.config/bspwm/bspwmrc`**
- If you are not using sxhkd or polybar (highly recommended), delete the launch instructions.
- If you are using one monitor, delete the second workspace instruction, and remove the monitor ID `DVI-D-0` from the first instruction; you may also want to set the amount of desktops on your bar.
- If you are using multiple monitors, get the monitor IDs from the command in the prerequisites for this section, and for each monitor you wish to add, add a new workspace instruction, replacing the monitor ID and workspace numbers.
- You may also wish to remove the window rules I have set if you don't find them useful.

You can edit the colors using `~/.config/bspwm/theme.`

## SXHKD
### Prerequisites
Requires the `sxhkd` package, but also has shortcuts referring to `kitty`, `rofi`, `rofi-power-menu`, `firefox`, `thunar`, `gscreenshot`, and `pactl` by default; you may want to edit/remove these shortcuts.

### Installation
**Using stow:** Use `stow` to link the config files for SXHKD:
```
$ cd ~/dotfiles
$ stow -vt $HOME SXHKD
```
**By copying files:** copy sxhkdrc from `~/dotfiles/SXHKD/.config/sxhkd/` to `~/.config/sxhkd`.

## Kitty
### Prerequisites
Requires `kitty`, `ttf-fira-code` and `nerd-fonts-fira-code` packages, or Fira Code and Fira Code Nerd Font fonts in ~/.fonts.

### Installation
**Using stow:** Use `stow` to link the config files for Kitty:
```
$ cd ~/dotfiles
$ stow -vt $HOME Kitty
```
**By copying files:** copy kitty.conf and theme.conf from `~/dotfiles/Kitty/.config/kity/` to `~/.config/kitty`.

## Rofi
### Prerequisites
Requires `rofi` and `ttf-fira-code` and `nerd-fonts-fira-code` packages, or Fira Code and Fira Code Nerd Font fonts in ~/.fonts.

### Installation
**Using stow:** Use `stow` to link the config files for Rofi:
```
$ cd ~/dotfiles
$ stow -vt $HOME Rofi
```
**By copying files:** copy all files from `~/dotfiles/Rofi/.config/rofi/` to `~/.config/rofi`.

## ZSH
### Features
- Sets default editor to `neovim`/`nvim`
- Sets the prompt to your username with some flashy text, and the name of the folder you are currently in
- Has tab completion and syntax highlighting
- Edit command in editor (set to neovim) with ctrl+e
- Prompt is in vim mode, you may want to disable this if you are not familiar with vim
- Pres control+o for a graphical alternative to cd
- Adds a begin function, for the alias `r` used to reset zsh
- Has an alias file (`.config/aliases`), you may want to edit this to contain your own aliases

### Prerequisites
Requires your shell is `zsh`, assumes `neovim` is installed, and requires `lf` for graphical cd and `zsh-syntax-highlighting` for syntax highlighting.

### Installation
**Using stow:** Use `stow` to link the config files for ZSH:
```
$ cd ~/dotfiles
$ stow -vt $HOME ZSH
```
**By copying files:** copy `.zshrc` from `~/dotfiles/ZSH` to `~` and `aliasrc` from `~/dotfiles/ZSH/.config` to `~/.config`

## Dunst
### Prerequisites
Requires `dunst` and `ttf-fira-code` and `nerd-fonts-fira-code` packages, or Fira Code and Fira Code Nerd Font fonts in ~/.fonts.
### Installation
**Using stow:** Use `stow` to link the config files for Dunst:
```
$ cd ~/dotfiles
$ stow -vt $HOME Dunst
```
**By copying files:** copy all files from `~/dotfiles/Dunst/.config/dunst` to `~/.config/dunst`.

## Picom
### Prerequisites
Requires `picom`
### Installation
**Using stow:** Use `stow` to link the config files for Picom:
```
$ cd ~/dotfiles
$ stow -vt $HOME Picom
```
**By copying files:** copy `picom.conf` from `~/dotfiles/Picom/.config/picom` to `~/.config/picom`.

## Polybar
### Prerequisites
Requires `pulseaudio`, `pactl`, `nerd-fonts-fira-code` by default, and of course `polybar`.
### Installation
**Using stow:** Use `stow` to link the config files for Polybar:
```
$ cd ~/dotfiles
$ stow -vt $HOME Polybar
```
**By copying files:** copy all files from `~/dotfiles/Polybar/.config/Polybar` to `~/.config/Polybar`.
#Config editing
Some things you may want to edit in polybar's `config`:
- Which modules are in the bar
- Which workspaces have which icons/text

## .xinitrc
### Prerequisites
Requires `xorg-xinit`
### Installation
**Using stow:** Use `stow` to link the config files for xinit:
```
$ cd ~/dotfiles
$ stow -vt $HOME xinit
```
**By copying files:** copy `.xinitrc` from `~/dotfiles/xinit/.config/` to `~/.config/`.

### Config editing
You may have to delete some of my startup apps and add your own.
If you do not use xinit as your startup manager, you may want to look at my .xinitrc and copy some of the startup apps set.

## Neofetch
### Features
- Regular neofetch
- Minimal fetch, called with `minfetch`
### Installation
**Using stow:** Use `stow` to link the config files for Neofetch:
```
$ cd ~/dotfiles
$ stow -vt $HOME Neofetch
```
**By copying files:** copy all files from `~/dotfiles/Neofetch/.config/neofetch` to `~/.config/neofetch`.

## Wallpaper(s? will maybe add more in the future)
DO NOT USE STOW for the included wallpaper(s) as this may override the Pictures folder. Just copy the wallpaper(s) to wherever you store wallpapers.
