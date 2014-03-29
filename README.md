emacs-setup
======================================================================

My emacs setup.  Emacs live, cider, Evil, eproject, helm+ ctags,  and some custom stuff.  Plus my keybindings

Evil Mode
=========
Yes, I'm one of those. I've been using emacs in some sort of Vi emulation since 1995. Evil-mode is the best so far.
You can easily turn it off in the personal-pack. The Evil mode pack includes a few but not all of the Evil-mode extensions. For more information check out the [Evil-mode documentation.](http://www.emacswiki.org/emacs/Evil)

Included with this pack are 
* [evil-leader](https://github.com/cofi/evil-leader)
* [evil-paredit](https://github.com/roman/evil-paredit)
* [evil-nerd-commenter](https://github.com/redguardtoo/evil-nerd-commenter)
* [evil-surround](https://github.com/timcharper/evil-surround)
* [powerline](https://github.com/Dewdrops/powerline) 
 
Powerline is is off by default, see setup.el in the personal-pack to turn it on.


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
ctags -e to generate invalid tags files. To fix this ```export CFLAGS=-O0``` before doing a ```brew install```. From then on the find-tags function worked fine.

eproject
=========
There are a couple of eprojects out there. This one is very non-invasive, and does a nice job of figuring out when you are in a project. The [eproject repository is here](https://github.com/jrockway/eproject)

Install Packages
=================
This is not really the Emacs-Live way, but Packages are installed. Elpa, Melpa and Marmalade are setup to go.
ErgoMacs has a nice explanation [here.](http://ergoemacs.org/emacs/emacs_package_system.html)

Clojure
============
The Cider page says that it comes with Emacs-Live, but I have not found that. Included is a [Clojure-cider pack](https://github.com/EricGebhart/clojure-cider-pack) that gets it all set up.

Clojure Script
================
The [Clojure Script pack](https://github.com/ardumont/clojurescript-pack) sets up clojure-script mode.

Personal-Pack
===========

The Personal pack is a sort of scratch pack. It has a place for functions, key bindings, variables and setup.
Personal pack is always the last pack loaded, so this is a great place to change emacs from the defaults that
have accumulated from the other packs. I would recommend forking the [personal-pack repository](https://github.com/EricGebhart/personal-pack) so you can one
of your own. 

There are a few functions in functions.el, Most notably are some extensions to ido, ```ido-find-tag``` and ```ido-find-file-in-tag-files```.  keys.el has all my special keybindings which is mostly _F keys_.
Vars.el sets some git-gutter variables and Display-buffer-alist, although that does not work so well yet.
Check ```~/.emacs.d/emacs-live-packs/personal-pack/config/``` to see what is there.

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

* F1 = M-x

* Help
 * f2 = Help for help
 * f2 b  = show keybindings for current major and minor modes.

* Shell & Cider
 * F3 = cycle through shell and REPL buffers.
 * S-F3 = Cider-jack-in

* Buffers and Files
 * F4 = eproject-ibuffer
 * S-F4 = ibuffer
 * C-F4 = Dired
 
 * F9 kills a buffer.
 * F10 opens a file.

* Buffer cycling
 * F12, S-F12 = contextual cycle of buffers, forward and backwards.
 * C-F12, M-f12 = cycle all buffers.

    Buffer cycling is contextual, \*---\* buffers only cycle in the lower pane. non * buffers cycle in the main window pane.

* Moving between panes
 * F11 moves the focus between panes.

* Comments
 * S-F11 - comment / uncomment line
 * C-F11 - comment / uncomment paragraph


Take a look at ~/.emacs.d/emacs-live-packs/cyclebufs-pack/config/keys.el  to see or change the key bindings.

Instead of nrepl cider is installed.  If you see instructions to use M-x nrepl-????  try M-x cider-???? instead.
Cider is the new and improved replacement to nrepl.

M-x cider-jack-in   - or S-F3

Will start a clojure repl and connect to it.
