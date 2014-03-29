# copy emacs-live to .emacs.d
# copy emacs-live-packs under it.
# set .emacs-live.el so emacs live will install the extras.

LIVEFILE=.emacs-live.el
EMACSDIR=.emacs.d
LIVEFILEBAK=${LIVEFILE}-`date +%d%b%y:%H:%M`
EMACSDIRBAK=${EMACSDIR}-`date +%d%b%y:%H:%M`

install:
	if [ -a ~/${EMACSDIR} ]; then mv ~/${EMACSDIR} ~/${EMACSDIRBAK}; fi;
	if [ -a ~/${LIVEFILE} ]; then mv ~/${LIVEFILE} ~/${LIVEFILEBAK}; fi;
	mkdir ~/${EMACSDIR}
	cp .emacs-live.el ~/
	cp -R emacs-live/* ~/${EMACSDIR}/
	cp -R emacs-live-packs ~/${EMACSDIR}/
	rm -rf ~/${EMACSDIR}/packs/stable/colour-pack
	rm -rf ~/${EMACSDIR}/packs/dev/colour-pack


elpy-py3k: elpy-base rope_py3k

elpy: elpy-base rope

elpy-base:
	pip install elpy
	pip install flake8
	pip install jedi

ipython:
	easy_install ipython[all]

rope:
	pip install rope

rope_py3k:
	pip install rope_py3k
