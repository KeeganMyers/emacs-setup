;; a utility function to help in installing emacs-live packs
(defun add-live-packs (path packs)
  "Adding live packs at startup"
  (live-add-packs
   (mapcar
    (lambda (pack)
      (concat path pack))
    packs)))

;; all the other packs needed
(add-live-packs "~/.emacs.d/emacs-live-packs/"
                '(;; installing emacs repositories (melpa, milkbox, marmalade) and the install-packs utility function
                  "install-packages-pack"
                  "clojurescript-pack"
                  "eproject-pack"
                  "clojure-cider-pack"
                  ;vi emulation.
                  "evilmode-pack"
                  ;automatic tags.
                  "helm-ctags-pack"
                  ;emacs window manager.
                  ;"e2wm-pack"
                  ;buffer management and key bindings.
                  "cyclebufs-pack"
                  ;Solarized theme pack.
                  "solarized-pack"
                  ))
