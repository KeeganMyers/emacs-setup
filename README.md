
emacs-setup
======================================================================

My emacs setup.  Emacs live, cider, Evil, eproject, helm+ ctags,  and some custom stuff.  Plus my keybindings


install
===========

    git clone --recursive https://github.com/EricGebhart/emacs-setup.git

    cd emacs-setup

    make

Make will save a timestamped version of any ~/.emacs-live.el and ~/.emacs.d directory.


Basic keybindings
------------------

Vi bindings everywhere.

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
====
