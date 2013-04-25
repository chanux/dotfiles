Dotfiles
--------
Here lies my dotfiles.

I just clone this repo to the home directory of a new setup and symlink to the directories.

I have mentioned a bunch of small tools that makes my life easy in requirements file.

As an example, for bash I would do..
    cp ~/.bashrc ~/.bashrc.default #just in case
    ln -s ~/dotfiles/basrc ~/.bashrc
    ln -s ~/dotfiles/bash ~/.bash
    ln -s ~/dotfiles/toolbelt ~/.toolbelt #My setup depends on the stup in toolbelt dir
