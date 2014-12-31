(require 'ctags-update)

(autoload 'turn-on-ctags-auto-update-mode "ctags-update" "turn on 'ctags-auto-update-mode'." t)
(add-hook 'c-mode-common-hook  'turn-on-ctags-auto-update-mode)
(add-hook 'emacs-lisp-mode-hook  'turn-on-ctags-auto-update-mode)
(add-hook 'emacs-clojure-mode-hook  'turn-on-ctags-auto-update-mode)

(autoload 'ctags-update "ctags-update" "update TAGS using ctags" t)
                                        ;(global-set-key "\C-cE" 'ctags-update)

                                        ; I don't want to be asked to confirm everytime the TAGS file changes.
(setq tags-revert-without-query 1)
