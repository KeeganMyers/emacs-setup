emacs-setup
======================================================================

My emacs setup.  Emacs live, cider, Evil, eproject, e2wm and some custom stuff.  Plus my keybindings


install
===========

    git clone --recursive https://github.com/EricGebhart/emacs-setup.git

    cd emacs-setup

    make

Make will save a timestamped version of any ~/.emacs-live.el and ~/.emacs.d directory.


E2wm
------------------
E2wm is an emacs window manager.
I use the e2wm:dp-code view.

If the window sizes get wonky do
M-x e2wm:dp-code

F6 will toggle the lower 'sub' pane on and off.


Basic keybindings
------------------

Vi bindings everywhere.

F1 = M-x
f2 = Help

F3 = cycle shell and REPL buffers in the 'sub' pane

F12, S-F12 = contextual cycle of buffers, forward and backwards.

Buffer cycling is contextual, *---* buffers only cycle in the lower pane. non * buffers cycle in the main window pane.

F11 moves the focus between panes.

F10 opens a file.

F9 kills a buffer.

F6 toggles the lower pane on and off.

Take a look at ~/.emacs.d/emacs-live-packs/cyclebufs-pack/config/keys.el  to see or change the key bindings.


Instead of nrepl cider is installed.  If you see instructions to use M-x nrepl-????  try M-x cider-???? instead.
Cider is the new and improved replacement to nrepl.

M-x cider-jack-in

Will start a clojure repl and connect to it.
