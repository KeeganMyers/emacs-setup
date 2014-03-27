emacs-setup
======================================================================

My emacs setup.  Emacs live, cider, Evil, eproject, helm+ ctags,  and some custom stuff.  Plus my keybindings


Emacs 24 themes
================

This setup removes the Colour-theme pack that comes with emacs-live and replaces it with theme-pack
which uses the newer builtin theme management that comes with emacs 24.

In addition to the default themes, Solarized themes, cyberpunk, zenburn, and strange-deeper-blue are included.
Along with a large number of themes that have been converted from the old color-theme format.

**__Solarized Dark is the default theme.__**

C-Tags
===========

Included is the helm+ ctags pack. This pack uses exuberant ctags instead of etags for file tagging. TAGS files
are automatically generated and set as you traverse your projects. On OS-X with ctags 5.8 there is an issue which causes
ctags -e to generate invalid tags files. To fix this ```export CFLAGS=-O0``` before doing a ```brew install```. From then on
the find-tags function worked fine.

Also included are some extensions to ido, most notably  ```ido-find-tag``` and ```ido-find-file-in-tag-files```.

Cyclebufs
===========

The Cyclebufs pack is a sort of scratch pack. It has cyclebufs, along with other things that haven't made it into other packs yet. I'll likely fix that soon, but for now my key bindings and the ido functions along with a few other things are in that pack. Check ```~/.emacs.d/emacs-live-packs/cyclebufs-pack/config/``` to see what is there.

Git Gutter
==========

[Git gutter](https://github.com/syohex/emacs-git-gutter) is part of emacs live. But most styles do not define it's settings.
Read the doc, and make it do what you want.


install
===========

    git clone --recursive https://github.com/EricGebhart/emacs-setup.git

    cd emacs-setup

    make


Make will save a timestamped version of any ~/.emacs-live.el and ~/.emacs.d directory.


Basic keybindings
------------------

Vi bindings everywhere. If you don't like vi turn it off.  ```M-x Evil-mode```

F1 = M-x

f2 = Help

f2 k  = show keybindings for current major and minor modes.

F3 = cycle shell and REPL buffers in the 'sub' pane

F12, S-F12 = contextual cycle of buffers, forward and backwards.

Buffer cycling is contextual, \*---\* buffers only cycle in the lower pane. non * buffers cycle in the main window pane.

F11 moves the focus between panes.

F10 opens a file.

F9 kills a buffer.

Take a look at ~/.emacs.d/emacs-live-packs/cyclebufs-pack/config/keys.el  to see or change the key bindings.

Instead of nrepl cider is installed.  If you see instructions to use M-x nrepl-????  try M-x cider-???? instead.
Cider is the new and improved replacement to nrepl.

M-x cider-jack-in   - or S-F3

Will start a clojure repl and connect to it.
