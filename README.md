emacs-setup
======================================================================

My emacs setup.  Emacs live, cider, Evil, eproject, helm+ ctags, the Elpy python environment and some custom stuff.
Plus my keybindings. 
I completely ditched my 15 years worth of old emacs setup and started over. I code in many languages, but
clojure and python are the most common currently. Emacs-Live seemed like an easy path to take. I've also been
using vi emulation since the beginning, so Evil mode was the right choice. I also missed CTags. helm+ ctags takes
care of that seamlessly.

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
 
Powerline is is off by default, see __setup.el__ in the __personal-pack__ to turn it on.

CycleBufs
==============
[This pack](http://github.com/EricGebhart/cyclebufs-pack) is now built on top of BS - Buffer Selection. There are several bs-configurations,
and extra functionality which makes switching buffers more contextual. 
Reusing windows for different mode groups shell, dired, and bs-show if they are visible.

Also cycling of buffers based on groups.

As an example, the shell group contains shell, eshell, ansi-term, cider, and inferior python modes.
one of them before cycling. There is also contextual cycling based on the mode group of the current buffer, 
cycling through shells, *buffers, or file buffers accordingly. 


Cyclebufs will open a shell buffer of your choice based on the value of cb-shell-command. The default is
eshell. See *vars.el* in the *personal-pack*.  

Emacs 24 themes
================

This setup removes the problematic Colour-theme pack that comes with emacs-live and replaces it with theme-pack
which uses the newer builtin theme management that comes with emacs 24.

In addition to the default themes, Solarized themes, cyberpunk, zenburn, deviant and strange-deeper-blue are included.
Along with a large number of themes that have been converted from the old color-theme format.

**__Solarized Dark is the default theme.__**

To change the theme, M-x customize-themes.  Or customize __setup.el__ in ```emacs-live-packs/personal-pack```

C-Tags
===========

Included is the helm+ ctags pack. This pack uses exuberant ctags instead of etags for file tagging. TAGS files
are automatically generated and set as you traverse your projects. On OS-X with ctags 5.8 there is an issue which causes
```ctags -e``` to generate invalid tags files. To fix this ```export CFLAGS=-O0``` before doing a ```brew install```. From then on the find-tags function worked fine.

eproject
=========
There are a couple of eprojects out there. This one is very non-invasive, and does a nice job of figuring out when you are in a project. The [eproject repository is here](https://github.com/jrockway/eproject)

Install Packages
=================
This is not really the Emacs-Live way, but Packages are installed. Elpa, Melpa and Marmalade are setup to go.
ErgoMacs has a nice explanation [here.](http://ergoemacs.org/emacs/emacs_package_system.html)
*setup.el* in the personal pack has a function where you can list the packages you want installed, so it
will install them for you.

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
have accumulated from the other packs. I would recommend forking the [personal-pack repository](https://github.com/EricGebhart/personal-pack) so you can have one of your own. 

There are a few functions in functions.el, Most notably are some extensions to ido, ```ido-find-tag``` and ```ido-find-file-in-tag-files```.  keys.el has all my special keybindings which is mostly _F keys_.
Vars.el sets some variables for the various packages and eshell.
Check ```~/.emacs.d/emacs-live-packs/personal-pack/config/``` to see what is there. I've tried to put sections
for the various packages which have settings or functions to call on startup. Look in *setup.el* and *vars.el*.

__Eshell__ There are also settings for eshell, along with several prompts to choose from in eshell-setup.el.
__Evil-mode__ see evil-setup.el.

Git Gutter
==========

[Git gutter](https://github.com/syohex/emacs-git-gutter) is part of emacs live. But most styles do not define it's settings.
Read the doc, and make it do what you want. There are several settings shown in *vars.el* in the personal-pack.


ELPY
=========
This is the current king of python development on emacs. There have been others, but this one is currently under
development and is as up to date as it gets. It is using an older version of flymake, but I don't see that as an issue.
[Elpy](https://github.com/jorgenschaefer/elpy/wiki) is a Python development package which includes many other packages.
* [Rope](http://rope.sourceforge.net/) - This is the default.
* or [Jedi](https://github.com/davidhalter/jedi) for introspection.
* [flake8](https://pypi.python.org/pypi/flake8) *pyflakes* and *pep8* for code checking.
 * [flake8 configuration documentation](http://flake8.readthedocs.org/en/latest/config.html#global) 
* [Nose](https://nose.readthedocs.org/en/latest/) for testing.


These are additional emacs modules in the elpy-pack, which elpy depends upon.
 * [pyvenv](https://github.com/jorgenschaefer/pyvenv)
 * [highlight indentation](https://github.com/antonj/Highlight-Indentation-for-Emacs)
 * [nose](https://github.com/emacsmirror/nose)

Emacs 24's python.el is the prefered python mode, it is the better parts of the old python.el and python-mode.el. Elpy
can also use ipython. See *vars.el* in the *personal-pack*.


The Makefile
------------
The make file has a few rules to help with the installation of the python modules that Elpy depends on.
Only rope has a separate version for Python 3.x. It's important to instal readline with easy_install.
If you get a crash on start up with ```M-x elpy-shell-switch-to-shell``` readline is quite possibly the problem.
Also, keep an eye on the install paths on OS X. Things don't always go where PATH can find them.

__Makefile Rules__
* __elpy__ Installs the Python parts of 
 * Elpy 
 * flake8
 * jedi
 * rope
 * readline
* __elpy-py3k__  Is the same but for python 3.+
 * Elpy
 * flake8
 * Jedi
 * readline
 * **rope_py3k** 
* __ipython__ Installs IPython.


To install everything for python 2.?

```make elpy ipython```

To install everything for python 3+

```make elpy-py3k ipython```
 
Although you may want to do all of this manually. The best place to start
is the [Elpy install page](https://github.com/jorgenschaefer/elpy/wiki/Installation)


You may need to install [python setup tools](https://pypi.python.org/pypi/setuptools) to get **__easy_install__**.
This command generally works on OS X and Unix/Linux. 
If you have errors on OS X check which easy_install and pip executables that you are using and that they
match your version of python.

```wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python```


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
 * f2 a  = apropos
 * f2 f  = find function
 * f2 v  = find variable
 * f2 k  = show function bound to key(s).
 * f2 m  = show major minor modes for current buffer.

* Shell & Cider
 * F3 =  cb-next-shell-window, New shell if needed, focus window, cycle through shell and REPL buffers.
 * S-F3 = cb-next-cider-window, - cider-jack-in, focus window, cycle through shell and REPL buffers.
 * C-F3 = Cider-quit
 * M-F3 = Cider

* Buffers and Files
 * F4 = cb-next-dired-window, focus window, get dired, cycle through dired buffers.
 * S-F4 = dired
 * C-F4 = cb-next-show-window
 * M-F4 = eproject-ibuffer
 
 * F9 kills a buffer.
 * F10 opens a file.

* Buffer cycling
 * F12, S-F12 = contextual next/previous buffers, forward and backwards.
 * C-F12, M-f12 = next/previous all buffers.

* Moving between panes
 * F11 moves the focus between panes.

* Comments
 * S-F11 - comment / uncomment line
 * C-F11 - comment / uncomment paragraph


Take a look at _~/.emacs.d/emacs-live-packs/cyclebufs-pack/config/keys.el_ to see or change the key bindings.

Instead of nrepl cider is installed.  If you see instructions to use M-x nrepl-????  try M-x cider-???? instead.
Cider is the new and improved replacement to nrepl.

M-x cider-jack-in   - or S-F3

Will start a clojure repl and connect to it.
