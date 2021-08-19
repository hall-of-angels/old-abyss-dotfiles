# Abyss dotfiles

These are the dotfiles for my BSPWM rice. 
These files are personally oriented and as such you will have to edit some files if you intend to use them yourself.

---

# Install instructions

## Prerequisites
These instructions require the `git` and `stow` packages/programs, and assume you have them installed already.
Because the installation uses `stow`, you **should not delete the repository** If you need to so you can use these files in your own dotfiles, or for any other reason, there will also be instructions for which files to copy to where in your system. 

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
