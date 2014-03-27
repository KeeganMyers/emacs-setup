# copy emacs-live to .emacs.d
# copy emacs-live-packs under it.
# set .emacs-live.el so emacs live will install the extras.

LIVEFILE=.emacs-live.el
EMACSDIR=.emacs.d
LIVEFILEBAK=${LIVEFILE}-`date +%d%b%y:%H:%M`
EMACSDIRBAK=${EMACSDIR}-`date +%d%b%y:%H:%M`

install:
        rm -rf emacs-live/packs/stable/colour-pack
	if [ -a ~/${EMACSDIR} ]; then mv ~/${EMACSDIR} ~/${EMACSDIRBAK}; fi;
	if [ -a ~/${LIVEFILE} ]; then mv ~/${LIVEFILE} ~/${LIVEFILEBAK}; fi;
	mkdir ~/${EMACSDIR}
	cp .emacs-live.el ~/
	cp strange-deeper-blue-theme.el ~/${EMACSDIR}/
	cp -R emacs-live/* ~/${EMACSDIR}/
	cp -R emacs-live-packs ~/${EMACSDIR}/
