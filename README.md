emacs-setup
======================================================================

My emacs setup. 
I completely ditched my 18 years worth of old emacs setup and started
over with emacs-live a year ago. I'm going to hit 20 with a fresh setup.

I ditched emacs-live with this revision, back to my old-school ways. 
Basically, an old school emacs setup that uses packages. I started over
fresh, until I had something better than I had with emacs-live.

I develop almost entirely in clojure these days. I imagine this setup
will grow a bit as I find languages I haven't quite supported.

This is a pretty straight forward setup. There is a _.emacs_ file 
and an _emacs24_ directory full of stuff, mostly configurations and
extensions which I wrote or from someone else that aren't available
as packages. I leave _.emacs.d_ entirely for emacs to do what it
wants, although backups and savepoints are stored there.

The big things; Evil-mode (which can be easily switched off in _emacs24/setup.el_).
clojure, clojure script, cider, et. al. Exuberant ctags, projectile, ag, magit,
git-gutter, smart-mode-line, ido, smex, company, aggressive indent, 
undo-tree the usual. Some nice evil and clojure-mode extensions to 
make clojure and vi mode nicer like add-hooks for eldoc. Golden-ratio 
if you are on a smaller screen. Lots of themes.  
Check out _emacs24/packages.el_ to see all the
packages. look at _emacs24/config_ for all the configurations.

There are significant language tools available. There is an entire sub menu
of language commands in _evil-leader-conf.el_.  Google translate, translate
sentence-at-point, input method and dictionary swapping, ispell with hunspell,
ispell with flycheck for on the fly spell checking and langtool for grammar
checking.

_Mu4e_ There is a reasonably basic mu4e configuration with multiple contexts.

Everything that can be installed as packages is. *The glaring exception is mu4e.*
Look in _packages.el_ if I happen to add a package through _package-install_ 
I then go add it to _packages.el_ so I won't forget and configuration is repeatable. 
There are a lot of themes. Some are old style color-themes that have
been converted, others are more modern themes like solarized, Venburn. etc.
 
I didn't mess with key mappings except for F keys, and the addition
of Evil-leader which allows for ,w for write, ,q delete-buffer, etc.
Mostly, the key mappings I added are non-intrusive.  It is definitely a
good idea to go read _config/evil-leader-conf.el_ whether you want _Evil_ key
bindings or not. It will give you a good idea of functionality to look for or map
to your own keys in _keys.el_

Additional tools needed
================
* For email
    * mu - `brew install mu --with-emacs`
    * gnutls  -- `brew install gnutls`
    * isync (mbsync) -- `brew install isync` -- see the file mbsyncrc for an example config.
    * Openssl -- `brew install openssl`

* for Spelling and grammar.
    * languagetool -- `brew install languagetool`
    * hunspell -- `brew install hunspell` -- add dictionaries as needed. on OS X they go in /Library/Spelling/
    * hunspell dictionaries  [get them here!](https://github.com/EricGebhart/Hunspell-dictionaries)

* *SourceCodePro Fonts* -- Copy the ones in fonts/ to /Library/fonts/, (on OS X). 
The default will be reasonable if you don't have them. But they are nice.
If you want to build them yourself you can do that too.
[They are here](https://github.com/adobe-fonts/source-code-pro)

Note that if you don't want to use emacs or mu4e for mail, mu, gnutls, isync, and Openssl are unnecessary.
_Although you will need to remove *mu4e-conf.el* and the reference to extensions/mu4e in *.emacs*_
Additional isync/mbsync/mu4e resources [are here:] (http://www.ict4g.net/adolfo/notes/2014/12/27/EmacsIMAP.html)

Special Files
================

* .emacs-mu4e  - An alternative to .emacs if you want a separate mu4e emacs instance.
 This is set up to work inside a terminal. I use it in a pane of iterm2's visor.
 _If *Meta* does not work, check that the option key is set to send *+Esc* in iterm2's profiles.
* mu4e-terminal - An executable to start the mu4e emacs instance. `emacs -Q -nw -l ~/.emacs-mu4e`
* packages.el - defines all packages to load
* setup.el - last file to run, where stuff seems to go until it goes into config/
* config/ - where all the real setup goes.
* config/vars.el - miscellaneous variable setting.
* config/keys.el - key bindings, mostly F keys.
* config/evil-leader.el - more key bindings, vi style.

Installation
=============

* Fork this repository.
* Check out your new repository.
* Install the above packages.
* Install dictionaries as desired.
* Copy .emacs and .emacs-mu4e to ~/
* Copy mu4e-terminal to ~/bin/  or wherever you keep such things.
* Link emacs24 to ~/emacs24. `ln -s the-emacs24-directory-in-the-repository ~/emacs24`.
* link the mu4e elisp to _emacs24/extensions/mu4e_. Mine (installed by home brew) is located here. 
`mu4e -> /usr/local/Cellar/mu/0.9.16/share/emacs/site-lisp/mu/mu4e`

Evil Mode
=========
I've been using emacs in some sort of Vi emulation since 1995. Evil-mode is the best so far.
You can easily turn it off in _setup.el_ . The Evil mode setup includes a few but not all of the Evil-mode 
extensions. For more information check out the [Evil-mode documentation.](http://www.emacswiki.org/emacs/Evil)

Included along with evil mode are: 
* [evil-leader](https://github.com/cofi/evil-leader)
* [evil-paredit](https://github.com/roman/evil-paredit)
* [evil-nerd-commenter](https://github.com/redguardtoo/evil-nerd-commenter)
* [evil-surround](https://github.com/timcharper/evil-surround)
* evil-org
* undo-tree
 
CycleBufs
==============
Cyclebufs is now built on top of BS - Buffer Selection. There are several bs-configurations,
and extra functionality which makes switching buffers more contextual. 
Reusing windows for different mode groups shell, dired, and bs-show if they are visible.

Also cycling of buffers based on groups.

As an example, the shell group contains shell, eshell, ansi-term, cider, and inferior python modes.
Once a buffer has one of the modes in the group, cycling will stay within that group.
There is also contextual cycling based on the mode group of the current buffer, 
cycling through shells, *buffers, or file buffers accordingly. 

Cyclebufs will open a shell buffer of your choice based on the value of cb-shell-command. The default is
eshell. See *vars.el*.  

Ido
==========

ido, flx-ido, smex, ido-menu

C-Tags
===========

Exuberant ctags with ctags-update and helm+.  Also integrated with projectile.

Clojure
===========

clojure-mode +
This is my primary development environment.

paredit, company, clj-refactor, rainbow-delimiters, mic-paren, cider, evil-surround, evil-paredit. 
Also some syntactic sugar for #() (fn ) #{} and (partial ..).

Autocomplete via company, rather than autocomplete.

flycheck, kibit and eastwood, clj-refactor are also set up. You will have to set up the plugins in your _~/.lein/profiles.clj_
There is a basic _lein-profiles-example.clj_ which you can steal from for your _~/.lein/profiles.clj_ file.
kibit and eastwood, clj-refactor are the primary things to look at. There is nothing special otherwise.

ELPY
=========
This is the current king of python development on emacs. There have been others, but this one is currently under
development and is as up to date as it gets.
[Elpy](https://github.com/jorgenschaefer/elpy/wiki) is a Python development package which includes many other packages.
* [Rope](http://rope.sourceforge.net/) - This is the default.
* or [Jedi](https://github.com/davidhalter/jedi) for introspection.
* [flake8](https://pypi.python.org/pypi/flake8) *pyflakes* and *pep8* for code checking.
 * [flake8 configuration documentation](http://flake8.readthedocs.org/en/latest/config.html#global) 
* [Nose](https://nose.readthedocs.org/en/latest/) for testing.

Other language modes.
=====================
Haskell, Ruby, yaml, apache, markdown.

Themes
=========

Lots of themes from packages. Additionally my own personal theme
strange-deeper-blue. As well as a couple of variations on solarized.
There is also a palette-themes.el which is a more general library
adapted from the solarized-theme. Palette-themes allow for the creation
of themes simply by defining a palette of colors. There are four
different variations of the solarized themes included.
